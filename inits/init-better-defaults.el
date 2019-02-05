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

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
