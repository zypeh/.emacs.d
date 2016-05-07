;; ;; Mode line
;; (setq-default mode-line-format
;; 	      (quote
;; 	       (" "
;; 		;; mode string
;; 		(:propertize global-mode-string face 'mode-line-mode-string)

;; 		;; file path
;; 		(:propertize (:eval (if (> (length default-directory) 20)
;; 				    (concat "..." (substring default-directory -20))
;; 				    default-directory))
;; 		face 'mode-line-folder-face)

;; 	       ;; file name
;; 	       (:propertize mode-line-buffer-identification face 'mode-line-buffer-name)
;; 	       " "
;; 	       (:propertize mode-line-modified face 'mode-line-modified)
;; 	       "  "
;; 	       ;; value of 'mode-name'
;; 	       (:propertize "%m" face 'mode-line-mode-name)
;; 	       " :: "
;; 	       ;; line
;; 	       "line %l, %p")))

;; Mode Line
(add-to-list 'load-path "~/.emacs.d/modules/emacs-powerline")
(require 'powerline)

;; Configurations
(setq powerline-arrow-shape 'arrow)
(custom-set-faces
 '(mode-line ((t (:foreground "#969896" :background "#282A2E" :box nil))))
 '(mode-line-inactive ((t (:foreground "#282A2E" :background "#969896" :box nil)))))

(setq powerline-color1 "#373B41")
(setq powerline-color2 "#1D1F21")

(provide 'init-modeline)
