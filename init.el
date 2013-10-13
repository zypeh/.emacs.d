;; This is the init file that bootstrap all the configurations
;; which is divided into a number of other files.

(add-to-list 'load-path "~/.emacs.d/")
(require 'init-bechmarking)


(load "init-base")     			
(load "init-modeline") 			
(load "init-keys")     			
(load "theme-tomorrow-night")	        
(load "init-prog")     					 
(load "init-paredit")		

(load "init-xterm")

(load "init-c-lang")       
(load "init-lisp-lang")    
(load "init-markdown")
(load "init-golang")

(require 'server)
(unless (server-running-p)
  (server-start))


(message "init completed in %.2fms"
	 (time-subtract-millis (current-time) before-init-time))


