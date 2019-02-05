(package-initialize)

;; add custom configurations path to load path
(add-to-list 'load-path "~/.emacs.d/inits")

;; function for opening main configuration file
(defun open-init-file()
    (interactive)
    (find-file "~/.emacs.d/init.el"))

;; function for buffer indent
(defun indent-buffer()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

;; configurations for packages
(require 'init-packages)
;; configurations for ui
(require 'init-ui)
;; configurations for better defaults
(require 'init-better-defaults)
;; configurations for key bindings
(require 'init-key-bindings)
;; custom configurations
(require 'init-custom)

;; configuration for custom group
(setq custom-file (expand-file-name "inits/init-custom.el" user-emacs-directory))
