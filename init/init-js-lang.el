;; init-js-lang.el

;; js2-mode
(add-to-list 'load-path "~/.emacs.d/modules/js2-mode/")
(autoload 'js2-mode "js2-mode" "an improved javascript editing mode" t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

(provide 'init-js-lang)
