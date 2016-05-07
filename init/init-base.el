;;
;; Files: init-base.el
;; General configurations

(require 'init-defuns)

;; Remove Emacs and GNU booting screen
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;; Set default directory
(setq default-directory "~")

;; Set home directory
(cd (expand-file-name "~/"))

;; UTF-8 encodings
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Revert buffers automatically when underlying files are changed
(global-auto-revert-mode t)

;; No bell ring
(setq ring-bell-function (lambda()))

;; Parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; No dialog boxes
(setq use-dialog-box nil)

;; Syntax-highlight
(global-font-lock-mode t)

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
(setq frame-title-format "%b")

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

;; Automatically scroll compilation window
(setq compilation-scroll-output 1)
(sm/mkdir-p (sm/emacs.d "cache"))
(sm/mkdir-p (sm/emacs.d "etc"))
(sm/mkdir-p (sm/emacs.d "cache/backups"))

;; Keep backups in a separate directory
(defun make-backup-file-name (file)
  (concat (sm/emacs.d "cache/backups/") (file-name-nondirectory file) "~"))

;; Keep autosave files in /tmp
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Change auto-save-list directory
(setq auto-save-list-file-prefix (sm/emacs.d "cache/auto-save-list/.saves-"))

;; Disable annoying lock files
(setq create-lockfiles nil)

;; Move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; Ignore case for completion
(setq completion-ignore-case t
      read-file-name-completion-ignore-case t)

;; When copying something from outside emacs, save to kill-ring
(setq save-interprogram-paste-before-kill t)

;; GC optimisation
;; Increase garbage collection threshold to 50MB (from 0.76MB)
(setq gc-cons-threshold 50000000）

;; Mac-port defaults
(when (equal system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super)
  (global-set-key [(super v)] 'yank)
  (global-set-key [(super q)] 'save-buffer-kill-emacs))

(provide 'init-base)
