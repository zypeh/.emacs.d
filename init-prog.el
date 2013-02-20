;; init-prog.el

(add-to-list 'load-path "~/.emacs.d/vendor")

;; Rainbow delimiters
(require 'rainbow-delimiters)
; enable this rainbow parentheses globally
(global-rainbow-delimiters-mode)

;; Par Edit
; activate it automatically
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode             (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook              (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook  (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook            (lambda () (paredit-mode +1)))
