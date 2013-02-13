;; Keybindings

;; Rainbow delimiters
(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'rainbow-delimiters)
; enable this rainbow parentheses globally
(global-rainbow-delimiters-mode)

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Align
(global-set-key (kbd "C-x \\") 'align-regexp)

;; Macros
(global-set-key [f10] 'start-kbd-macro)
(global-set-key [f11] 'end-kbd-macro)
(global-set-key [f12] 'call-last-kbd-macro)

