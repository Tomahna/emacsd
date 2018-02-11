;; global variables
(defvar show-paren-delay)
(defvar use-package-always-ensure)

(setq backup-by-copying         t)
(setq backup-directory-alist    `(("." . "~/.cache/emacs/backup")))
(setq confirm-kill-emacs        #'y-or-n-p) ;; confirm before exiting emacs (todo remove when bad habits are gone)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq create-lockfiles          nil)
(setq inhibit-startup-screen    t)
(setq scroll-error-top-bottom   t)
(setq sentence-end-double-space nil)
(setq show-trailing-whitespace  t)
(setq show-paren-delay          0)
(setq use-package-always-ensure t)

;; buffer local variables
(setq-default c-basic-offset   4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width        4)

(load custom-file 'noerror)

;; package manager
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

;; Add vim shortcuts
(use-package evil
  :config
  (evil-mode 1))

(use-package magit)
(use-package evil-magit)

;; Add Ivy (completion)
(use-package ivy
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d ")
  :config
  (ivy-mode 1))

;; Add projectile (project mode)
(use-package projectile
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line '(:eval (format " Project[%s]" (projectile-project-name))))
  :config
  (projectile-mode))

(global-auto-revert-mode 1)

;; global keybindings
(global-unset-key (kbd "C-z"))


(add-to-list 'load-path "~/.emacs.d/lisp")


;; Theme
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
