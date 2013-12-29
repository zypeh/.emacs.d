;; Slime

; SLIME directory => (git) /usr/share/emacs/site-emacs/slime

;; Lisp System
; replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
; (slime-setup)

;; Hooks
(add-hook 'lisp-mode-hook          (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-lisp-mode t)))

(global-set-key (kbd "C-c C-c") 'slime-close-all-parens-in-sexp)
