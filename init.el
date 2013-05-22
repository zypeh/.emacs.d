;;
;;
;;     My emacs config
;;        by Zypeh
;;  
;; 31 Jan 2013 | Start!!
;; 10 Feb 2013 | first commit to Github 
;; 12 Feb 2013 | + SBCL and SLIME support
;;               + Refined setup and configs files
;;               + README file added
;; 16 Feb 2013 | Email client Mu4e support (deleted!)
;; 20 Feb 2013 | + El-get added
;;               + paredit hooks
;;               + Elpa added
;;   <...snip...>
;; 22 May 2013 | Major changes
;;               + language specified configuration file added
;;               + auto-complete added globally
;;               + C language style options "k&r"
;;               + paredit globally
;;               

;; path allocation
(add-to-list 'load-path "~/.emacs.d/") 

;; Load other configs
(load "init-base")   ;; Emacs basic configurations
(load "init-keys")   ;; Emacs keys bindings
(load "init-gui")    ;; Emacs GUI configurations
;(load "init-mu4e")   ;; Emacs mu4e email client configurations
(load "init-el-get") ;; Emacs el-get configurations
(load "init-prog")   ;; Emacs general programming behavior
;(load "init-media")  ;; Emacs multimedia support configurations

;; Emacs language setup
(load "init-c-lang")       ;; C/C++ languages
(load "init-lisp-lang")    ;; Lisp support


;; Slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

