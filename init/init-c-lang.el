;; init-c-lang.el

;; C-mode modification
(defun c-environment()
  (setq c-default-style "k&r"
	c-basic-offset 4)
  (which-function-mode)
  (show-paren-mode)
  (setq tab-width 4)
  (setq c-tab-always-indent t)
  (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
  )

;; Styles

(c-add-style "microsoft"
	     '("stroustrup"
	       (c-offsets-alist
		(innamespace . -)
		(inline-open . 0)
		(inher.cont . c-lineup-multi-inher)
		(arglist-cont-nonempty . +)
		(template-args-cont . +))))

(c-add-style "openbsd"
	     '("bsd"
	       (indent-tab-mode . t)
	       (defun-block-intro . 8)
	       (statement-block-intro . 8)
	       (statement-case-intro . 8)
	       (substatement-open . 4)
	       (substatement . 8)
	       (arglist-cont-nonempty . 4)
	       (inclass . 8)
	       (knr-argdecl-intro . 8)))

;; ;; disaster
;; ; disassemble C/C++ codes on the fly
;; (add-to-list 'load-path "~/.emacs.d/vendor/disaster")
;; (require 'disaster)
;; (define c-mode-base-map (kbd "\C-c d" 'disaster)

;; INTIALIZE
(add-hook 'c-mode-hook 'c-environment)
(add-hook 'c-mode-hook '(lambda() (paredit-mode +1)))
