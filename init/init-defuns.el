;;
;; init-defuns
;; Definitions for custom functions

;; Emacs path directory
(defun sm/emacs.d (path)
  (expand-file-name path user-emacs-directory))

;; Make directory if it does not exist
(defun sm/mkdir-p (dir-path)
  (unless (file-exists-p dir-path)
    (make-directory dir-path t)))

;; Prompt to automatically create parent directories
(defun sm/create-non-existent-directory ()
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' doesn't exist! Create it?" parent-directory)))
      (make-directory parent-directory t))))

;; Provide this package
(provide 'init-defuns)

