;; key bindings for swiper
(global-set-key "\C-s" 'swiper)

;; key bindings for ivy
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)

;; key bindings for counsel
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x f") 'counsel-describe-function)
(global-set-key (kbd "C-x v") 'counsel-describe-variable)

;; key binding for recentf
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; key binding for instantly opening emacs main configurations file
(global-set-key (kbd "<f2>") 'open-init-file)

;; key binding for finding git files
(global-set-key (kbd "C-c p f") 'counsel-git)

;; key binding for org mode
(global-set-key (kbd "C-c a") 'org-agenda)

;; key binding for indent-region-or-buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(provide 'init-key-bindings)
