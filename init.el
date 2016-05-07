;; This is the init file that bootstrap all the configurations
;; which is divided into a number of other files.

(add-to-list 'load-path (expand-file-name "init/" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin")

(require 'init-bechmarking)

;; Configuration
(require 'init-base)     			; Main configuration
(require 'init-modeline) 			; Modeline-thingy
(require 'init-keys)     			; Keybindings
(load "packages")                       ; MELPA
(when window-system
  (load "theme-tomorrow-night"))        ; Theme	        

(require 'init-prog)     			; Font's and parenthesis
(require 'init-paredit)		        ; Parenthesis matcher
(require 'init-xterm)                     ; Xterm
(require  'init-web)                       ; HTML,css,php,etc... 
(require  'init-c-lang)                    ; C language configurations
(require 'init-lua-lang)                  ; Lua language configurations
(require 'init-py-lang)                   ; Python language configurations
(require 'init-lisp-lang)                 ; Lisp dialects configurations
(require 'init-js-lang)                   ; Javascript language configurations
(require 'init-markdown)                  ; Markdown mode
(require 'init-go-lang)                   ; Go lang configurations
(require 'init-slime)                     ; Slime controller

(require 'server)
(unless (server-running-p)
  (server-start))


(message "init completed in %.2fms"
	 (time-subtract-millis (current-time) before-init-time))

