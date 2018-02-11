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

(use-package evil)                 ;;VimLike Emacs Interface
(use-package evil-magit)
(use-package magit)                ;;Git Interface
(use-package ivy                   ;;Completion framework
  :commands ivy-mode
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d "))
(use-package projectile            ;;Project Mode
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line '(:eval (format " [%s]" (projectile-project-name)))))

(evil-mode               t)
(ivy-mode                t)
(projectile-mode         t)
(global-auto-revert-mode t)

;; global keybindings
(global-unset-key (kbd "C-z"))

(add-to-list 'load-path "~/.emacs.d/lisp")
(load "appearance")    ;; Theme
(load "udf")           ;; User defined functions
(load "lang_elisp.el")
(load "lang_markdown")
(load "lang_nix")
(load "lang_python")
(load "lang_scala")
(load "yaml")
(load "keybind")       ;; Keybindings
