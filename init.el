;; the package manager
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (rainbow-delimiters diminish rainbow-mode sidebar python-mode elpy evil-magit magit flycheck flycheck-cask nix-mode markdown-mode evil-smartparens smartparens smartparens-config highlight-indent-guides multiple-cursors ansible projectile airline-themes powerline hlinum solaire-mode yaml-mode evil ensime use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/lisp")

(load "global")
(load "appearance")

;; User defined functions
(load "udf")

;; Language Settings
(load "markdown")
(load "nix")
(load "lang_elisp.el")
(load "lang_python")
(load "lang_scala")
(load "yaml")

;; Keybindings
(load "keybind")
