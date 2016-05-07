;; Python language support

;; Ipdb required. Insert "import ipdb; ipdb.set_trace()"
(defun python-add-breakpoint ()
  "Add a breakpoint."
  (interactive)
  (newline-and-indent)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))

(add-hook 'python-mode-hook
	  (lambda () (define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)))

(defun python-interactive ()
  "Enter the interactive python environment."
  (interactive)
  (progn
    (insert "!import code; code.interact(local = vars())")
    (move-end-of-line 1)
    (comint-send-input)))

(provide 'init-py-lang)
