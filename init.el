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
  (setq highlight-symbol-idle-delay 0.2))
(use-package ivy                   ;;Completion framework
  :commands ivy-mode
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d "))
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
(use-package persistent-scratch
  :config
  (setq persistent-scratch-save-file "~/.cache/emacs/scratch")
  (persistent-scratch-setup-default))
(use-package projectile            ;;Project Mode
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line         '(:eval (format " [%s]" (projectile-project-name))))
  (setq projectile-use-git-grep      t))
(use-package winum)


(evil-mode               t)
(ivy-mode                t)
(projectile-mode         t)
(global-auto-revert-mode t)
(winum-mode)
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
(load "lang_yaml")
(load "keybind")       ;; Keybindings

;; Buffer navigation
(define-key treemacs-mode-map (kbd "C-à") 'treemacs-select-window)
(define-key treemacs-mode-map (kbd "C-&") 'winum-select-window-1)
(define-key treemacs-mode-map (kbd "C-é") 'winum-select-window-2)
(define-key treemacs-mode-map (kbd "C-\"") 'winum-select-window-3)
(define-key treemacs-mode-map (kbd "C-'") 'winum-select-window-4)
(define-key treemacs-mode-map (kbd "C-(") 'winum-select-window-5)
(define-key treemacs-mode-map (kbd "C--") 'winum-select-window-6)
(define-key treemacs-mode-map (kbd "C-è") 'winum-select-window-7)
(define-key treemacs-mode-map (kbd "C-_") 'winum-select-window-8)
(define-key treemacs-mode-map (kbd "C-ç") 'winum-select-window-9)
(define-key evil-normal-state-map (kbd "<backtab>") 'switch-to-buffer)
(define-key evil-normal-state-map (kbd "C-à") 'treemacs-select-window)
(define-key evil-normal-state-map (kbd "C-&") 'winum-select-window-1)
(define-key evil-normal-state-map (kbd "C-é") 'winum-select-window-2)
(define-key evil-normal-state-map (kbd "C-\"") 'winum-select-window-3)
(define-key evil-normal-state-map (kbd "C-'") 'winum-select-window-4)
(define-key evil-normal-state-map (kbd "C-(") 'winum-select-window-5)
(define-key evil-normal-state-map (kbd "C--") 'winum-select-window-6)
(define-key evil-normal-state-map (kbd "C-è") 'winum-select-window-7)
(define-key evil-normal-state-map (kbd "C-_") 'winum-select-window-8)
(define-key evil-normal-state-map (kbd "C-ç") 'winum-select-window-9)
