;; init-lisp-lang.el

;; Par Edit
; activate it automatically
(autoload 'paredit-mode "paredit"

  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode             '(lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook              '(lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook  '(lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook            '(lambda () (paredit-mode +1)))

(provide 'init-lisp-lang)
