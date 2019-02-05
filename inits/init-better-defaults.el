(global-auto-revert-mode t)

;; configuration for org mode
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))

;; turn off auto backup file
(setq make-backup-file nil)

;; turn off autosave
(setq auto-save-default nil)

;; configurations for recentf
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expan-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

;; configurations for dired
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
