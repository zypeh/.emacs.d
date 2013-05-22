;; GUI configuration

;; Remove toolbars and others useless thingy
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode nil)
(transient-mark-mode t)
(set-scroll-bar-mode nil)
 
;; Enable clipboard
(setq x-select-enable-clipboard t)

;; Notify current files location
(setq frame-title-format "Emacs@%b")

;; Mouse avoidance mode
(setq mouse-avoidance-mode 'animate)

;; Emacs powerline mode
(add-to-list 'load-path "~/.emacs.d/vendor/powerline")
(require 'powerline)

(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#54af62" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(setq powerline-color1 "#007380")
(setq powerline-color2 "#7fa4db")

