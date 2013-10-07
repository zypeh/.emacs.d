;; Init.el

;; Appearance
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'color-theme-tomorrow)
(color-theme-tomorrow--define-theme night)

;; path allocation
(add-to-list 'load-path "~/.emacs.d/") 

;; Load other configs
(load "init-base")     ;; Emacs basic configurations
(load "init-modeline") ;; Emacs modeline configurations
(load "init-keys")     ;; Emacs keys bindings
(load "init-prog")     ;; Emacs general programming behavior
(load "init-media")    ;; Emacs multimedia support configurations

;; Emacs language setup
(load "init-c-lang")       ;; C/C++ languages
(load "init-lisp-lang")    ;; Lisp support
