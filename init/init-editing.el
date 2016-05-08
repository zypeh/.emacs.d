;;
;; File: init-editing.el
;; Editors behaviors

;; Highlight current line
(global-hl-line-mode 1)
(unless window-system
  (set-face-background hl-line-face "#cd0000"))

;; Linum
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d  ") ; More spaces besides

;; Always end a file with a newline
(setq require-final-newline t)

;; Delete marked text on typing
(delete-selection-mode t)

;; Visual line
(global-visual-line-mode t)

;; Don't use tabs for indent; replace it
;; tabs will be two spaces
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; prompt to automaticallt create parent dires when required
(add-to-list 'find-file-not-found-functions
             #'sm/create-non-existent-directory)

(provide 'init-editing)

