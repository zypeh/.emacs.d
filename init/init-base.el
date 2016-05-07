;; init-base.el

;; Remove Emacs and GNU booting screen
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

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
(setq frame-title-format "Emacs*%b*")

;; Mouse avoidance mode
(setq mouse-avoidance-mode 'animate)

;; Hi-light current line
(global-hl-line-mode 1)
(unless window-system
  (set-face-background hl-line-face "#cd0000"))

;; Line Numbers
(global-linum-mode 1)

;; Always end a file with a newline
(setq require-final-newline nil)

;; Smooth-scrolling 
;; Mouse wheel & keyboard scroll on one line at a time
(add-to-list 'load-path "~/.emacs.d/modules/smooth-scrolling")
(require 'smooth-scrolling)
(setq smooth-scroll-margin 10)

(require 'smooth-scroll) 
(smooth-scroll-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scrool-step 1)

;; Global
; (global-company-mode)
 
;; Reduce the time after which the company auto completion popup opens
; (setq company-idle-delay 0.2)

;; Reduce the number of characters before company kicks in
; (setq company-minimum-prefix-length 1)
