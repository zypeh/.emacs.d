;;
;; File: init-pref.el
;; Personal preference, and rices

(require 'init-defuns)

;; Fonts
(defvar sm/fixed-font-name "Inconsolata")
(defvar sm/fixed-font-weight 'light)
(defvar sm/var-font-name "Inconsolata")
(defvar sm/font-height 140)

;; Window setup
(add-hook 'window-setup-hook
          (lambda nil
            (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
            (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
            (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
            (run-with-idle-timer 0.1 nil (lambda nil
                                           (toggle-frame-maximized)))
            (set-fringe-mode '(8 . 0))
            (set-face-attribute
             'default nil
             :family sm/fixed-font-name
             :height sm/font-height
             :weight sm/fixed-font-weight)
            (set-face-attribute
             'linum nil
             :family sm/fixed-font-name
             :height (- sm/font-height 10)
             :weight sm/fixed-font-weight)
            (set-face-attribute
             'variable-pitch nil
             :family sm/var-font-name)))

;; Modeline
;; -----------------
(setq-default mode-line-fortmat
              (quote
               (
                " "
                ;; Mode string
                (:propertize global-mode-string face 'mode-line-mode-string)
                ;; Buffer string
                (:propertize mode-line-buffer-identification face 'mode-line-buffer name)
                " "
                ;; Status
                (:propertize mode-line-modified face 'mode-line-modified)
                "  "
                ;; Modes
                (:propertize "%m" face 'mode-line-mode-name)
                ;; Position
                " :: Line %l, %p")))

;; frame hooks
;;------------------
(defvar after-make-console-frame-hooks '()
  "Hooks to run after creating a new TTY frame")
(defvar after-make-window-system-frame-hooks '()
  "Hookes to run after createing a new window-system frame")

(defun run-after-make-frame-hooks (frame)
  "Run configured hooks in response to the newly-created FRAME.
Selectively runs either 'after-make-console-frame-hooks' or
'after-make-window-system-frame-hooks'"
  (with-selected-frame frame
    (run-hooks (if window-system
                   'after-make-window-system-frame-hooks
                 'after-make-console-frame-hooks))))

(add-hook 'after-make-frame-functions 'run-after-make-frame-hooks)

(provide 'init-pref)
