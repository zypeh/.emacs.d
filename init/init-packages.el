;;
;; File: init-packages.el
;; Download, and install the 3rd party packages

;; Dependencies
(require 'init-defuns)
(require 'package)

;; MELPA repository to the package list
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Initialize package system
(package-initialize)

;; Ensure use-package is installed
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(eval-when-compile (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; use-package settings
(setq use-package-always-ensure t)

;; themes
;; -----------------
(use-package darkokai-theme
  :ensure t
  :config (load-theme 'darkokai t))

;; code search
;; -----------------
(use-package ag
  :bind ("C-c s" . ag)
  :config (setq ag-highlight-search t))

(use-package anzu
  :diminish anzu-mode
  :init (global-anzu-mode)
  :bind (("M-%" . anzu-query-replace)
	 ("C-M-%" . anzu-query-replace-regexp)))

;; code completion
;; -----------------
(use-package company
  :diminish " ©"
  :commands (company-mode global-company-mode)
  :init (lambda ()
	  (add-hook 'prog-mode-hook 'company-mode)
	  (add-hook 'comint-mode-hook 'company-mode))
  :config (lambda () (
		      (use-package company-quickhelp
			:if window-system
			:init (company-quickhelp-mode 1))
		      (setq-default company-backend
				    (remove 'company-eclim company-backend))
		      (setq company-tooltip-limit 20)
		      (setq company-idle-delay 0.25)
		      (setq company-echo-delay 0)
		      (setq company-minimum-prefix-length 2)
		      (define-key company-active-map (kbd "M-n") nil)
		      (define-key company-active-map (kbd "M-p") nil)
		      (define-key company-active-map (kbd "C-n") 'company-select-next)
		      (define-key company-active-map (kbd "C-p") 'company-select-previous)
		      (setq company-backends
			    (mapcar #'sm/backend-with-yas company-backend)))))

;; aggressive-indent
;; -----------------
(use-package aggressive-indent
  :commands aggressive-indent
  :init (lambda() (
                   (global-aggressive-indent-mode 1)

                   ;; exclude aggressive mode list
                   (add-to-list 'aggressive-indent-exclude-modes
                                'html-modes)
                   (add-to list 'aggressive-indent-dont-indent-if
                           '(and (derived-mode-p 'c++-mode)
                                 (null (string-match "\\([;{}]\\|\\b\\(if\\|for\\|while\\)\\b\\)"
                                                     (thing-at-point 'line))))))))
                   
;; code utils
;; -----------------
(use-package rainbow-delimiters
  :commands rainbow-delimiters-mode
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package smooth-scroll
  :config (lambda () (
		      (setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
		      (setq mouse-wheel-progressive-speed nil)
		      (setq mouse-wheel-follow-mouse 't)
		      (setq scroll-step 1)
		      (setq scroll-margin 10)
		      ;; linum delay
		      (setq linum-delay t)
		      (setq scroll-conservatively 10000))))

;; flycheck
;; -----------------
;(use-package flycheck
 ; :commands flycheck-mode
  ;:diminish " ✓"
  ;:init (add-hook 'prog-mode-hook 'flycheck-mode))

;; flyspell
;; -----------------
(use-package flyspell
  :diminish flyspell-mode
  :commands flyspell-mode
  :init (add-hook 'text-mode-hook 'flyspell-mode)
  :config (lambda () (
		      (setq ispell-extra-args '("--sug-mode=fast"))
		      (setq flyspell-issue-message-flag nil)
		      (setq flyspell-issue-welcome-flag nil))))

;; expand-region
;; -----------------
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;; parenthesis matcher
(use-package smartparens
  :defer 2
  :diminish " ()"
  :config (lambda () (
		      (require 'smartparens-config)
		      (smartparens-global-mode t)
		      (show-smartparens-global-mode t))))

;; whitespace cleanup
;;(use-package whitespace-cleanup-mode
;;  :diminish whitespace-cleanup-mode
;;  :init (global-whitespace-mode))

;; uniquify
;; Overrides Emacs's default mechanism for making buffer names unique
(use-package uniquify
  :ensure nil
  :config (setq uniquify-buffer-name-style 'forward))

;; smex
(use-package smex
  :bind ("M-x" . smex)
  :init (setq smex-save-file (sm/emacs.d "cache/smex-items"))
  :config (smex-initialize))

;; Git
;; -----------------
(use-package magit
  :commands magit-status
  :bind ("C-x g" . magit-or-monky-status)
  :init (setq magit-last-seen-setup-instruction "1.4.0")
  :config (lambda () (
		      (defadvice magit-status (around magit-fullscreen activate)
			(window-configuration-to-register :magit-fullscreen)
			ad-do-it
			(delete-other-windows))
		      (defadvice magit-mode-quit-window (around magit-restore-scren activate)
			ad-do-it
			(jump-to-register :magit-fullscreen))
		      ;; Use flycheck during commits
		      (add-hook 'git-commit-mode-hook '(lambda()(flyspell-mode t))))))

(use-package monky
  :commands monky-status
  :config (lambda () (
		      (defadvice monky-status (around monky-fullscreen activate)
			(window-configuration-to-register :monky-fullscreen)
			ad-do-it
			(delete-other-windows))
		      (defadvice monky-mode-quit-window (around monky-restore-screen activate)
			ad-do-it
			(jump-to-register :monky-fullscreen))
		      ;; flycheck during commits
		      (add-hook 'monky-log-edit-mode-hook '(lambda()(flyspell-mode t))))))

(use-package git-gutter
  :diminish git-gurtter-mode
  :ensure git-gutter-fringe
  :init (lambda() (
		   (require 'git-gutter-fringe)
		   (setq git-gutter:handler-backends '(git hg))
		   (global-git-gutter-mode t))))

;; Don't show the compile-log
(let ((buf (get-buffer "*Compile-Log*")))
  (when buf (delete-windows-on buf)))

(provide 'init-packages)

