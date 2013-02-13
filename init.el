;;
;;
;;    My emacs config
;;  
;; 31 Jan 2013 | Zypeh.
;;
;;

;; path allocation
(add-to-list 'load-path "~/.emacs.d/") 

;; Load other configs
(load "init-base") ;; Emacs basic configurations
(load "init-keys") ;; Emacs keys bindings
(load "init-gui")  ;; Emacs GUI configurations

;; Slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
