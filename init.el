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

(use-package diff-hl)
(use-package evil)                 ;;VimLike Emacs Interface
(use-package evil-magit)
(use-package expand-region
  :commands 'er/expand-region)
(use-package highlight-symbol
  :commands highlight-symbol highlight-symbol-mode
  :diminish highlight-symbol-mode
  :init
  (setq highlight-symbol-idle-delay 0.2)
  (defvar-local highlight-symbol-enabled nil)
  (add-hook 'highlight-symbol-mode-hook   (lambda () (if highlight-symbol-mode    (setq highlight-symbol-enabled t))))
  (add-hook 'evil-insert-state-entry-hook (lambda () (if highlight-symbol-enabled (highlight-symbol-mode t))))
  (add-hook 'evil-normal-state-entry-hook (lambda () (if highlight-symbol-enabled (highlight-symbol-mode t))))
  (add-hook 'evil-visual-state-entry-hook (lambda () (if highlight-symbol-enabled (highlight-symbol-mode -1)))))
(use-package ivy                   ;;Completion framework
  :commands ivy-mode
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d "))
(use-package git-timemachine
  :commands git-timemachine)
(use-package goto-chg
  :commands goto-last-change)
(use-package linum-relative
  :commands linum-relative-mode linum-relative-toggle
  :diminish linum-relative-mode
  :init
  (setq linum-relative-current-symbol "1")
  (setq linum-relative-plusp-offset   1))
(use-package magit                 ;;Git Interface
  :config
  (magit-auto-revert-mode -1)      ;; Workaround https://github.com/dgutov/diff-hl/issues/65
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))
(use-package multiple-cursors)
(use-package persistent-scratch
  :config
  (setq persistent-scratch-save-file "~/.cache/emacs/scratch")
  (persistent-scratch-setup-default))
(use-package projectile            ;;Project Mode
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line         '(:eval (format " [%s]" (projectile-project-name))))
  (setq projectile-use-git-grep      t))

;; Smartparens
;; Intelligently pair () {} [] ""
(use-package evil-smartparens
  :commands evil-smartparens-mode
  :diminish evil-smartparens-mode)
(use-package smartparens
  :diminish smartparens-mode
  :commands smartparens-mode smartparens-strict-mode
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))

(use-package winum)


(evil-mode               t)
(ivy-mode                t)
(projectile-mode         t)
(global-auto-revert-mode t)
(winum-mode)

(add-to-list 'load-path "~/.emacs.d/lisp")
(load "appearance")    ;; Theme
(load "udf")           ;; User defined functions
(load "lang_elisp.el")
(load "lang_markdown")
(load "lang_nix")
(load "lang_python")
(load "lang_scala")
(load "lang_yaml")
(load "layout_dvorak")

;; global keybindings
(global-unset-key (kbd "C-z"))
;;(global-unset-key (kbd "<left>"))
;;(global-unset-key (kbd "<right>"))
;;(global-unset-key (kbd "<up>"))
;;(global-unset-key (kbd "<down>"))
