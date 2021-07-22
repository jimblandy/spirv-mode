;;; spirv-mode.el --- Major mode for editing SPIR-V assembly -*- lexical-binding: t -*-

;; Copyright (C) 2021 Jim Blandy

;; Author: Jim Blandy <jimb@red-bean.com>
;; Created: 2021-7-21
;; Keywords: languages
;; URL: github.com/jimblandy/spirv-mode

;; This file is not part of GNU Emacs.

(define-derived-mode spirv-mode
  prog-mode "SPIR-V assembly"
  "Major mode for editing SPIR-V assembly language."
  (setq-local case-fold-search nil
              font-lock-defaults '(spirv-mode-keywords nil nil nil)
              indent-line-function 'spirv-mode-indent-for-tab))

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
  '("\\_<Op[a-zA-Z0-9]*\\_>"))

(defvar-local spirv-mode-opcode-column nil
  "The column in which SPIR-V instruction names should start.
Initially, this is nil in each buffer.
A value is chosen the first time a line is indented, based on the
existing buffer text.")

(defun spirv-mode-indent-for-tab ()
  "Indent the current line as appropriate for SPIR-V mode."
  (let ((move-to
         (save-excursion
           (forward-line 0)
           (cond
            ((looking-at "\\s-*\n") (spirv-mode--indent-blank-line))
            ((looking-at "\\s-*;") (spirv-mode--indent-comment))
            ((looking-at "[^;\n]*\\(%\\|\\_<Op\\)") (spirv-mode--indent-insn))))))
    (when move-to
      (goto-char move-to))))

(defun spirv-mode--indent-comment ()
  "Align the current line with the previous comment.
If there is no previous comment, align it with the current opcode column.
Assume point is at the beginning of a line containing only a comment."
  (let ((col (or (spirv-mode--prior-comment-column)
                 (spirv-mode--opcode-column))))
    (delete-region (point)
                   (progn (skip-syntax-forward "-") (point)))
    (indent-to col)
    nil))

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
Assume point is at the beginning of the line."
  (delete-region (point)
                 (progn (skip-syntax-forward "-") (point)))
  (indent-to (spirv-mode--opcode-column))
  (point))

(defun spirv-mode--indent-insn ()
  "Indent a line containing an instruction.
Assume `opcode' gives the buffer position of the start of the opcode.
Adjust leading indentation so that the opcode starts in the opcode column.
Assume point is at the beginning of the line."
  (let ((goal (spirv-mode--opcode-column)))
    ;; How much of an instruction do we actually have?
    (cond
     ;; A result id and an equals sign?
     ((looking-at "\\s-*\\(%[^[:space:]\n]+\\)\\s-*=\\s-*")
      (let ((result-id (match-string 1)))
        ;; Clean up any spaces around the equal sign.
        (delete-region (match-beginning 0) (match-end 0))
        (indent-to (- goal 3 (length result-id)))
        (delete-region (point) (progn (skip-syntax-forward "-") (point)))
        (insert result-id " = ")))

     ;; Just a result id?
     ((looking-at "\\s-*\\(%[^[:space:]\n]+\\)\\s-*")
      (let ((result-id (match-string 1)))
        (indent-to (- goal 3 (length result-id)))
        (delete-region (point) (progn (skip-syntax-forward "-") (point)))
        (forward-char (length result-id))
        (when (looking-at " ")
          (forward-char 1))))

     ;; Just an opcode. Easy peasy.
     (t
      (indent-to goal)
      (delete-region (point) (progn (skip-syntax-forward "-") (point))))))
  (point))

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
