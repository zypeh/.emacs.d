;; init-base.el

;; User setting
(setq user-full-name "zypeh")
(setq user-email-address "ciboy2011@gmail.com")

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

;; Time mode                                ;; Not required (Powerline)
;;(display-time-mode 1)
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)

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


;; Theme
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'monokai-theme)
