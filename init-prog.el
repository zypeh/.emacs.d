;; init-prog.el
;; configure daily programming behavior.
;; usually affects globally (in prog-mode)

;; Programmer No.1 Fonts
(set-default-font "Source Code Pro 11")

;; Rainbow-delimiters
(add-to-list 'load-path "~/.emacs.d/modules/rainbow-delimiters")
(require 'rainbow-delimiters)

; rainbow parentheses everywhere (Emacs24+)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Auto-complete
(add-to-list 'load-path "~/.emacs.d/modules/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/modules/auto-complete/ac-dict")
(ac-config-default)

;; Auto-complete options
; finish completation by TAB instead of RET
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" 'nil)

; select candidates with C-n/C-p only when completion menu is displayed
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

; Not to use quick helps
(setq ac-use-quick-help nil)

; Height limits for menu
(setq ac-menu-height 20)

; Colors (Torommow-Theme)
(set-face-background 'ac-candidate-face "#282A2E") ;; Current-line
(set-face-foreground 'ac-candidate-face "#969896") ;; Comment
(set-face-background 'ac-selection-face "#373B41") ;; Selection
(set-face-foreground 'ac-selection-face "#8ABEB7") ;; Aqua

















