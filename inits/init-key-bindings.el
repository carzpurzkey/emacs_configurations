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

(provide 'init-key-bindings)
