;; Slime

; SLIME directory => (git) /usr/share/emacs/site-emacs/slime
; Gentoo-er, remove this line
(add-to-list 'load-path "~/.emacs.d/modules/slime")
(require 'slime-autoloads)

(setq slime-contribs '(slime-fancy))

;; Lisp System
; replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
(require 'slime)
(slime-setup)

;; Hooks
(add-hook 'lisp-mode-hook          (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-lisp-mode t)))
(require 'rainbow-delimiters)
(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)

(global-set-key (kbd "C-c C-c") 'slime-close-all-parens-in-sexp)
