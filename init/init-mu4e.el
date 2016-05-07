;; init-mu4e.el

;; Email client in emacs
;;
;; depencies : libgmime-2.6-dev libxapian-dev gnutls-bin
;; optional  : guile-2.0-dev html2text xdg-utils
;;
;; (!) Make sure gnutls command line utils are installed

(add-to-list 'load-path "~/.emacs.d/vendor/mu4e")
(require 'mu4e)

;; Default
(setq mu4e-maildir "~/Maildir")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder "/[Gmail].Sent.Mail")
(setq mu4e-trash-folder "/[Gmail].Trash")

;; Don't save message to Sent Message, Gmail/IMAP takes care of this 
(setq mu4e-sent-message-behavior 'delete)

;; Setup

;; Shortcut

(setq mu4e-maildir-shortcuts
      '(("/INBOX" . ?i)
	("/[Gmail].Sent Mail" . ?s)
	("/[Gmail].Trash" . ?t)
	("/[Gmail].All Mail" . ?a)))

;; Allow for updating mail using 'U' in the main view
(setq mu4e-get-mail-command "offlineimap")

;; Personal Data

(setq
 user-mail-address "ciboy2011@gmail.com"
 user-full-name    "zypeh"

 message-signature
 (concat
  "zypeh  | ciboy2011@gmail.com\n"
  "Github | https://github/Zypeh\n"
  "Daytime Geek :)"
  "\n"))


;; Mail 

(require 'smtpmail)
;;(setq message-send-mail-function 'smtpmail-send-it
;;      starttls-use-gnutls t
;;      stmpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;      stmpmail-auth-credentials
;;      '(("smtp.gmail.com" 587 "ciboy2011@gmail.com" nil))
;;      smtpmail-default-smtp-server "smtp.gmail.com"
;;      smtpmail-smtp-server "smtp.gmail.com"
;;      smtpmail-smtp-service 587)

;; Emacs-24
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;; Don't keep message buffers around
(setq message-kill-buffer-on-exit t)
