;; init-rust-lang.el

(unless (getenv "RUST_SRC_PATH")
      (setenv "RUST_SRC_PATH" (expand-file-name "~/.cargo/bin/")))

;; Set path to racer binary
;(setq racer-cmd "/usr/local/bin/racer")

;; Set path to rust src directory
(setq racer-rust-src-path "/Users/YOURUSERNAME/.rust/src/")

;; Load rust-mode when you open `.rs` files
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Setting up configurations when you load rust-mode
(add-hook 'rust-mode-hook

     '(lambda ()
     ;; Enable racer
     (racer-activate)
  
	 ;; Hook in racer with eldoc to provide documentation
     (racer-turn-on-eldoc)
	 
	 ;; Use flycheck-rust in rust-mode
     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
	 
	 ;; Use company-racer in rust mode
     (set (make-local-variable 'company-backends) '(company-racer))
	 
	 ;; Key binding to jump to method definition
     (local-set-key (kbd "M-.") #'racer-find-definition)
	 
	 ;; Key binding to auto complete and indent
     (local-set-key (kbd "TAB") #'racer-complete-or-indent)))
