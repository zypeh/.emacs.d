;; init-golang.el

(add-to-list 'load-path "~/.emacs.d/modules/go-mode/")
(require 'go-mode-load)

;; Golang modification
(defun go-run-buffer()
  (interactive)
  (shell-command (concat "go run " (buffer-name))))

(defun go-kill()
  (interactive)
  (if (go-mode-in-string)
      (paredit-kill-line-in-string)
      (paredit-kill))) 

(defun go-environment()
  (show-paren-mode)
  (which-function-mode)
  (setq tab-width 4)
  (setq c-tab-always-indent t)
  (define-key go-mode-map (kbd "RET") 'newline-and-indent)
)

;; INITIALIZE
(add-hook 'go-mode-hook 'go-environment)
(add-hook 'go-mode-hook '(lambda() (paredit-mode +1)))

(provide 'init-go-lang)
