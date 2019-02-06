(global-auto-revert-mode t)

;; configuration for org mode
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))
;;(require 'org-install)
;;(require 'ob-tangle)
;;(org-babel-load-file (expand-file-name "carzpurzkey.org" user-emacs-directory))

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

;; extend show-paren-function
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))
  (sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; hide dos eol
(defun hidden-dos-eol()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; remove dos eol
(defun remove-dos-eol()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(provide 'init-better-defaults)
