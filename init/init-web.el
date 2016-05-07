;; Web (CSS/Javascript/HTML/PHP) mode

(add-to-list 'load-path "~/.emacs.d/modules/web-mode")
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))


;; Impatient mode, watch the changes in browser session
(add-to-list 'load-path "~/.emacs.d/modules/htmlize")
(require 'htmlize)

(add-to-list 'load-path "~/.emacs.d/modules/emacs-web-server")
(require 'simple-httpd)

(add-to-list 'load-path "~/.emacs.d/modules/imp.el")
(require 'impatient-mode)

