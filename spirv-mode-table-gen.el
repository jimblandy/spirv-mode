;;; Functions for generating completion tables from the official Khronos grammar.

;; This is a set of functions I basically run by hand to update
;; spirv-mode-tables.el.
;;
;; The file spirv.core.grammar.json, from the repository
;; https://github.com/KhronosGroup/SPIRV-Headers.git, describes the grammar of
;; SPIR-V instructions. From this we generate our opcode completion table.

(require 'dash)
(require 'pp)

(defun spirv-mode--parse-grammar (buffer)
  "Parse the contents of `buffer' as a SPIR-V grammar description."
  (with-current-buffer buffer
    (save-excursion
      (goto-char (point-min))
      (json-parse-buffer :array-type 'list
                         :null-object nil
                         :false-object nil))))

(defconst spirv-mode--grammar
  (spirv-mode--parse-grammar "spirv.core.grammar.json"))

(defconst spirv-mode--instructions
  (gethash "instructions" spirv-mode--grammar))

(defun spirv-mode--operand-help (op)
  "Compute a list of help strings for an operand."

  ;; Most operand names are wrapped in single quotes:
  ;;
  ;;     'Initializer'
  ;;
  ;; Some operand names look like this:
  ;;
  ;;     'Argument 0', +\n'Argument 1', +\n...
  ;;
  ;; If the `+\n` is present, the `...` is also present. We'd like to turn this
  ;; into:
  ;;
  ;;     Argument 0, Argument 1, ...
  ;;
  ;; Sometimes operands with a "*" quantifier also have names ending in "...",
  ;; but not always.
  (let* ((kind (gethash "kind" op))
         (name (or (gethash "name" op) kind))
         (quantifier (gethash "quantifier" op)))
    ;; IdResult operands are the "%id = " before the opcode, so just omit
    ;; them from our display here.
    (if (equal kind "IdResult") nil
      (let (arguments
            found
            (start 0))
        (while (setq found (string-match ", \\+\n" name start))
          (push (substring name start found) arguments)
          (setq start (match-end 0)))
        ;; Push the portion after the last separator (which never appears at the
        ;; end of the string). If we didn't find any separators at all, this takes
        ;; care of the (single) argument.
        (push (substring name start) arguments)
        ;; We built the list backwards.
        (setq arguments (nreverse arguments))
        (when (and (equal quantifier "*")
                   (not (equal (-last-item arguments) "...")))
          (setq arguments (nconc arguments (list "..."))))
        (--map (if (string-match "\\`'.*'\\'" it)
                   (substring it 1 -1)
                 it)
               arguments)))))

(defun spirv-mode--insn-has-result (insn)
  "Return true if `insn' has a ResultId operand."
  (--any (equal (gethash "kind" it) "IdResult")
         (gethash "operands" insn)))

(defun spirv-mode--generate-operand-table ()
  (let ((table (make-hash-table :test 'equal)))
    (dolist (insn spirv-mode--instructions)
      (let* ((opname (gethash "opname" insn))
             (operands (gethash "operands" insn))
             (has-result (spirv-mode--insn-has-result insn))
             (operand-strings (-mapcat #'spirv-mode--operand-help operands)))
        (puthash opname (list has-result operand-strings) table)))
    (insert (pp `(defconst spirv-mode--instructions ,table)))))

(provide 'spirv-mode-table-gen)
