;; init-base.el

;; Remove Emacs and GNU booting screen
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

(add-to-list 'load-path "~/.emacs.d/")

;; Set bookmarks
(setq bookmark-default-file "~/emacs.d/.emacs.bmk")
; Snyc bookmark files (.bmk)
(setq bookmark-save-flag 1)

;; Parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; Syntax-highlight
(global-font-lock-mode t)

;; Return at 80th column
(setq default-fill-column 80)

;; Pointer tracking
(setq track-eol t)

;; Picture display 
(auto-image-file-mode t)

;; No temperary files
(setq make-backup-files nil)
(setq auto-save-default nil)
;; Not generate temp file anymore
(setq backup-inhibited t) 

;; Remove tollbars and others useless thingy
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode nil)
(transient-mark-mode t)
(set-scroll-bar-mode nil)

;; Enable clipboard
(setq x-select-enable-clipboard t)

;; Notify current files name
(setq frame-title-format "Emacs@%b")

;; MOuse avoidance mode
(setq mouse-avoidance-mode 'animate)

