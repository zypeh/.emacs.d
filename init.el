;; This is the init file that bootstrap all the configurations
;; which is divided into a number of other files.

;; Benchmarking Emacs performance
;;; Code:
(add-to-list 'load-path
	     (expand-file-name "benchmark-init/" user-emacs-directory))

(require 'benchmark-init-loaddefs)
(benchmark-init/activate)

(add-to-list 'load-path (expand-file-name "init/" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin")

;; Configuration
(require 'init-base)
(require 'init-pref)
(require 'init-editing)
;; (require 'init-modeline)
(require 'init-keys)
(require 'init-packages)

;;; init.el ends here
