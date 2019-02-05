;; turn off ring bell
(setq ring-bell-function 'ignore)

;; hide toolbar
(tool-bar-mode -1)

;; hide scrollbar
(scroll-bar-mode -1)

;; turn on delete selection mode
(delete-selection-mode t)

;; show line nunber
(global-linum-mode t)

;; highlight current row
(global-hl-line-mode t)

;; turn on splash screen on startup
(setq inhibit-splash-screen t)

;; fullscreen on startup
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; font size
;;(set-face-attribute 'default nil :height 160)

;; set cursor type to bar
(setq-default cursor-type 'bar)

;; set theme
(load-theme 'monokai t)

;; set font
(set-default-font "-JF  -CamingoCode Nerd Font Mono-normal-normal-normal-*-20-*-*-*-*-0-iso10646-1")

(provide 'init-ui)
