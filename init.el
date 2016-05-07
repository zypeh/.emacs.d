;; This is the init file that bootstrap all the configurations
;; which is divided into a number of other files.

(add-to-list 'load-path (expand-file-name "init/" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin")

(require 'init-bechmarking)

;; Configuration
(load "init-base")     			; Main configuration
(load "init-modeline") 			; Modeline-thingy
(load "init-keys")     			; Keybindings
(load "packages")                       ; MELPA
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
(load "init-js-lang")                   ; Javascript language configurations
(load "init-markdown")                  ; Markdown mode
(load "init-go-lang")                   ; Go lang configurations
(load "init-slime")                     ; Slime controller

(require 'server)
(unless (server-running-p)
  (server-start))


(message "init completed in %.2fms"
	 (time-subtract-millis (current-time) before-init-time))

