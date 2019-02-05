(package-initialize)

;; add custom configurations path to load path
(add-to-list 'load-path "~/.emacs.d/inits")

;; function for opening main configuration file
(defun open-init-file()
    (interactive)
    (find-file "~/.emacs.d/init.el"))

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
