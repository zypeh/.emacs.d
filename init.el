;; This is the init file that bootstrap all the configurations
;; which is divided into a number of other files.

(add-to-list 'load-path "~/.emacs.d/")
(require 'init-bechmarking)

;; Configuration
(load "init-base")     			; Main configuration
(load "init-modeline") 			; Modeline-thingy
(load "init-keys")     			; Keybindings

(when window-system
  (load "theme-tomorrow-night"))        ; Theme	        

(load "init-prog")     			; Font's and parenthesis
(load "init-paredit")		        ; Parenthesis matcher
(load "init-xterm")                     ; Xterm
(load "init-web")                       ; HTML,css,php,etc... 
(load "init-c-lang")                    ; C language configurations
(load "init-lua-lang")                  ; Lua language configurations
(load "init-py-lang")                   ; Python language configurations
(load "init-lisp-lang")                 ; Lisp dialects configurations
(load "init-markdown")                  ; Markdown mode
(load "init-golang")                    ; Go lang configurations
(load "init-slime")                     ; Slime controller

(require 'server)
(unless (server-running-p)
  (server-start))


(message "init completed in %.2fms"
	 (time-subtract-millis (current-time) before-init-time))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
