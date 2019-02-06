;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
     (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar  carz/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme

		popwin
		web-mode
		) "Default packages")

 (setq package-selected-packages carz/packages)

 (defun carz/packages-installed-p ()
     (loop for pkg in carz/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (carz/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg carz/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

;; configurations for smartparens
;; (require 'smartparens-config)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; configurations for swiper
(ivy-mode t)
(setq ivy-use-virtual-buffers t)

;; configurations for hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; configurations for company
(global-company-mode t)

;; configurations for popwin
(require 'popwin)
(popwin-mode t)

;; configurations for web-mode
(defun my-web-mode-indent-setup()
  (setq web-mode-markup-indent-offset 2) ;web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)    ;web-mode, css in html file
  (setq web-mode-code-indent-offset 2)   ;web-mode, js code in html file
  )
(add-hook 'web-mode-hook 'my-web-mode-indent-setup)
(defun my-toggle-web-indent()
  (interactive)
  ;; web development
  (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
      (progn
	(setq js-indent-level (if (= js-indent-level 2) 4 2))
	(setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))
  (if (eq major-mode 'web-mode)
      (progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
	     (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
	     (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
  (if (eq major-mode 'css-mode)
      (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))
  (setq indent-tabs-mode nil))

(setq auto-mode-alist
      (append
       ;; File name (within directory) starts with a dot.
       '(("/\\.[^/]*\\'" . fundamental-mode)
	  ;; File name has no dot.
	  ("/[^\\./]*\\'" . fundamental-mode)
	  ;; File name ends in '.C'.
	  ("\\.C\\'" . c++-mode)
	  ("\\.js\\'" . js2-mode)
	  ("\\`/tmp/fol/" . text-mode)
	  ("\\.texinfo\\'" . texinfo-mode)
	  ("\\.texi\\'" . texinfo-mode)
	  ("\\.el\\'" . emacs-lisp-mode)
	  ("\\.c\\'" . c-mode)
	  ("\\.h\\'" . c-mode)
	  ("\\.html" . web-mode))
       auto-mode-alist))

(provide 'init-packages)
