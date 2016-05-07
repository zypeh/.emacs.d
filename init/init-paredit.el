;; init-paredit.el
;; Keeping all paretheses balence

(add-to-list 'load-path "~/.emacs.d/modules/paredit")
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(provide 'init-paredit)
