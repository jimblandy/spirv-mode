;;; spirv-mode.el --- Major mode for editing SPIR-V assembly -*- lexical-binding: t -*-

;; Copyright (C) 2021 Jim Blandy

;; Author: Jim Blandy <jimb@red-bean.com>
;; Created: 2021-7-21
;; Keywords: languages
;; URL: github.com/jimblandy/spirv-mode

;; This file is not part of GNU Emacs.

(require 'dash)
(require 'spirv-mode-tables)

(define-derived-mode spirv-mode
  prog-mode "SPIR-V assembly"
  "Major mode for editing SPIR-V assembly language.
\\<spirv-mode-map>
\\[indent-for-tab-command] aligns instructions and comments.

\\[complete-symbol] completes instruction names."

  (setq-local case-fold-search nil
              font-lock-defaults `(,spirv-mode-keywords nil nil nil)
              indent-line-function 'spirv-mode-indent-for-tab)
  (add-to-list 'completion-at-point-functions 'spirv-mode--complete-opcode-at-point)
  (add-function :before-until (local 'eldoc-documentation-function)
                #'spirv-mode-eldoc-function))

(defvar spirv-mode-syntax-table
  (let ((table (make-syntax-table)))

    ;; Strings.
    (modify-syntax-entry ?\" "\"" table)
    (modify-syntax-entry ?\\ "\\" table)

    ;; Comments
    (modify-syntax-entry ?\; "<" table)
    (modify-syntax-entry ?\n ">" table)

    table)
  "Syntax table for SPIR-V mode.")

(defvar spirv-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c .") 'spirv-mode-set-opcode-column)
    map)
  "Keymap for SPIR-V assembly major mode.")

(defconst spirv-mode-keywords
  `((spirv-mode--font-lock-instruction-name . font-lock-keyword-face)
    ("\\_<Op[[:alnum:]]*\\_>" . font-lock-comment-face)
    ("%[_[:alnum:]]+" . font-lock-variable-name-face)))

(defun spirv-mode--font-lock-instruction-name (limit)
  "A font lock matcher function for true SPIR-V instruction names.
This uses a regexp to find potential matches quickly, and
then consults a hash table to see if it's actually an instruction."
  (let (result)
    (while (and (not result)
                (re-search-forward "\\_<Op[[:alnum:]]*\\_>" limit t))
      (setq result
            (gethash (match-string-no-properties 0) spirv-mode--instructions)))
    result))

(defvar-local spirv-mode-opcode-column nil
  "The column in which SPIR-V instruction names should start.
Initially, this is nil in each buffer.
A value is chosen the first time a line is indented, based on the
existing buffer text.")

(defmacro spirv-mode--cond-line-regexp (&rest arms)
  "Like `cond`, but the conditions are regexps matched against the entire line."
  (let ((saved-point-sym (gensym "cond-line-regexp")))
    `(let ((,saved-point-sym (point-marker)))
       (unwind-protect
           (progn
             (forward-line 0)
             (cond
              ,@(mapcar (lambda (arm)
                          (unless (and (consp arm) (proper-list-p arm))
                            (error "cond-line-regexp: clause is not well-formed: %S" arm))
                          (cond
                           ((stringp (car arm))
                            `((looking-at ,(car arm))
                              (goto-char ,saved-point-sym)
                              (setq ,saved-point-sym nil)
                              ,@(cdr arm)))
                           ((eq (car arm) 't)
                            `(t
                              (goto-char ,saved-point-sym)
                              (setq ,saved-point-sym nil)
                              ,@(cdr arm)))
                           (t
                            (error "cond-line-regexp: clause does not start with a regexp or `t': %S" arm))))
                        arms)))
         (when ,saved-point-sym
           (goto-char ,saved-point-sym))))))

(defun spirv-mode-indent-for-tab ()
  "Indent the current line as appropriate for SPIR-V mode."
  (spirv-mode--cond-line-regexp
   ("\\s-*\n" (spirv-mode--indent-blank-line))
   ("\\s-*;" (spirv-mode--indent-comment))
   ("[^;\n]*\\(%\\|\\_<Op\\)" (spirv-mode--indent-insn))))

(defun spirv-mode--indent-comment ()
  "Align the current line with the previous comment.
If there is no previous comment, align it with the current opcode column.
Try to preserve point helpfully."
  (let ((col (or (spirv-mode--prior-comment-column)
                 (spirv-mode--opcode-column))))
    (spirv-mode--adjust-indentation col)))

(defun spirv-mode--prior-comment-column ()
  "Return the column number of the closest whole-line comment above point.
Return nil if there is none."
  (save-excursion
    (forward-line 0)
    (when (re-search-backward "^\\s-*;" nil t)
      (goto-char (1- (match-end 0)))
      (current-column))))

(defun spirv-mode--indent-blank-line ()
  "Set up indentation for a blank line.
Try to preserve pont helpfully."
  (spirv-mode--adjust-indentation (spirv-mode--opcode-column)))

(defun spirv-mode--indent-insn ()
  "Indent a line containing an instruction.
Assume `opcode' gives the buffer position of the start of the opcode.
Adjust leading indentation so that the opcode starts in the opcode column.
Try to preserve point helpfully."
  (save-excursion
    (let ((goal (spirv-mode--opcode-column)))
      ;; How much of an instruction do we actually have?
      (spirv-mode--cond-line-regexp
       ;; A result id and an equals sign?
       ("\\s-*\\(%[^[:space:]\n]+\\)\\(\\s-*\\)=\\(\\s-*\\)"
        (let ((result-id (match-string 1)))
          ;; Clean up spaces around the id and equal sign.
          (goto-char (match-beginning 3))
          (spirv-mode--adjust-space 1)
          (goto-char (match-beginning 2))
          (spirv-mode--adjust-space 1)
          (goto-char (match-beginning 1))
          (spirv-mode--adjust-space (- goal 3 (length result-id)))))

       ;; Just a result id?
       ("\\s-*\\(%[^[:space:]\n]+\\)\\s-*"
        (let ((result-id (match-string 1)))
          (goto-char (match-beginning 1))
          (spirv-mode--adjust-space (- goal 3 (length result-id)))))

       ;; Just an opcode. Easy peasy.
       (t
        (spirv-mode--adjust-indentation goal))))))

(defun spirv-mode--opcode-column ()
  "Return the current opcode column."
  (or spirv-mode-opcode-column
      (setq spirv-mode-opcode-column (spirv-mode--choose-opcode-column))))

(defun spirv-mode--choose-opcode-column ()
  "Propose a default opcode column, based on the current buffer's text.
If the buffer contains any SPIR-V opcodes, try to match those.
(Ignore the instruction on the current line, since that's
probably the one we're trying to indent.) Otherwise, default to
column 24, because that's a nice number."
  (save-restriction
    (widen)
    (save-excursion
      (let ((line-start (progn (forward-line 0) (point)))
            (line-end (progn (forward-line 1) (point))))
        (goto-char (point-min))
        ;; Look for an `Op` that isn't in a comment, and isn't on the current line.
        (while (and (re-search-forward "^[^\n;]*\\(\\_<Op\\)" nil t)
                    (<= line-start (point))
                    (< (point) line-end)))
        ;; Did we find one?
        (if (>= (point) (point-max))
            24
          (goto-char (match-beginning 1))
          (let ((col (current-column)))
            (max col 12)))))))

(defun spirv-mode-set-opcode-column (column)
  (interactive
   (list
    (read-number "Set opcode column (default %d): "
                 (current-column))))
  (setq spirv-mode-opcode-column column))

(defun spirv-mode--adjust-indentation (desired)
  "Change the identation of the current line to `desired'.
This tries to do so in a way such that point lands at a nice place.
Tabs are not supported; patches welcome."
  (save-excursion
    (forward-line 0)
    (spirv-mode--adjust-space desired)))

(defun spirv-mode--adjust-space (desired)
  "Change the run of spaces at point to have length `desired'.
This tries to do so in a way such that point lands at a nice place.
Tabs are not supported; patches welcome."
  (save-excursion
    (skip-chars-backward " ")
    (let ((left (point)))
      (skip-chars-forward " ")
      (let* ((current (- (point) left))
             (change (- desired current)))
        (if (> change 0)
            (insert-before-markers (make-string change ?\ ))
          (delete-region (+ (point) change) (point)))))))

(defun spirv-mode--complete-opcode-at-point ()
  "Complete a SPIR-V opcode name preceding point, if appropriate."
  (save-match-data
    (when (looking-back "\\_<Op[[:alnum:]]*")
      (list (match-beginning 0) (match-end 0)
            spirv-mode--instructions))))

(defun spirv-mode--highlight-op (op)
  "Put highlighting on an operand help string `op'."
  ;; put-text-property is a mutating operation, so if we don't want the copy of
  ;; `op' in the table to get a highlight face set on it, we need to make a
  ;; copy.
  (setq op (copy-sequence op))
  (put-text-property 0 (length op) 'face 'eldoc-highlight-function-argument op)
  op)

(defun spirv-mode--insn-help (opname insn arg)
  "Compute a help string for insn to display with eldoc.
`arg' is the index of the argument to highlight. Zero is probably fine."
  (let ((has-result (car insn))
        (operands (cadr insn)))
    (concat (if has-result "%id = " "")
            opname " "
            (mapconcat #'identity
                       (-map-indexed (lambda (ix op)
                                       (if (= ix arg)
                                           (spirv-mode--highlight-op op)
                                         op))
                                     operands)
                       " "))))

(defun spirv-mode-eldoc-function ()
  (save-excursion
    (let ((here (point))
          (start (progn (forward-line 0) (point)))
          (limit (progn (forward-line 1) (point))))
      (goto-char start)
      (when (re-search-forward "\\_<Op[[:alnum:]]*?\\_>" limit t)
        (let* ((opname (match-string-no-properties 0))
               (insn (gethash opname spirv-mode--instructions)))
          (when insn
            ;; Figure out which argument point is in.
            (when (<= (point) here)
              (setq arg 0)
              (while (progn (forward-sexp)
                            (< (point) here))
                (setq arg (1+ arg))))
            (spirv-mode--insn-help opname insn arg)))))))


;; todo:
;; xref-find-definitions for ids

(provide 'spirv-mode)
