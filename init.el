;; global variables
(defvar show-paren-delay)
(defvar use-package-always-ensure)

(setq backup-by-copying         t)
(setq backup-directory-alist    `(("." . "~/.cache/emacs/backup")))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq create-lockfiles          nil)
(setq scroll-error-top-bottom   t)
(setq sentence-end-double-space nil)
(setq show-paren-delay          0)
(setq use-package-always-ensure t)

;; buffer local variables
(setq-default c-basic-offset   4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width        4)


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

(use-package diminish)

(use-package company
  :commands company-mode
  :diminish company-mode)
(use-package evil)                 ;;VimLike Emacs Interface
(use-package evil-mc
  :diminish evil-mc-mode
  :init (defvar evil-mc-key-map nil))
(use-package evil-nerd-commenter)
(use-package expand-region
  :commands 'er/expand-region)
(use-package flyspell
  :commands flyspell-mode
  :diminish flyspell-mode)
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

(use-package all-the-icons-ivy
  :config
  (all-the-icons-ivy-setup))
(use-package ivy                   ;;Completion framework
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d "))

(use-package goto-chg
  :commands goto-last-change)
(use-package linum-relative
  :commands linum-relative-mode linum-relative-toggle
  :diminish linum-relative-mode
  :init
  (setq linum-relative-current-symbol "1")
  (setq linum-relative-plusp-offset   1))

;; Persist scratch buffers
(use-package persistent-scratch
  :config
  (setq persistent-scratch-save-file "~/.cache/emacs/scratch")
  (persistent-scratch-setup-default))

(use-package popup-imenu
  :commands popup-imenu
  :init
  (evil-define-key 'normal 'global (kbd "C-e") 'popup-imenu)
  :config
  (setq popup-imenu-style 'indent)
  (setq popup-imenu-fuzzy-match nil))

(use-package ag)
(use-package projectile            ;;Project Mode
  :init
  (setq projectile-globally-ignored-files (list "TAGS" "*.class"))
  (setq projectile-completion-system      'ivy)
  (setq projectile-enable-caching         nil)
  (setq projectile-mode-line              '(:eval (format " [%s]" (projectile-project-name))))
  (setq projectile-use-git-grep           t))
(use-package restclient
  :commands restclient-mode
  :diminish restclient-mode)

;; Smartparens
;; Intelligently pair () {} [] ""
(use-package evil-smartparens
  :commands evil-smartparens-mode
  :diminish evil-smartparens-mode)
(use-package smartparens
  :diminish smartparens-mode
  :commands smartparens-mode smartparens-strict-mode
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  :config
  (sp-pair "<" ">"))

(use-package winum)

;; Code Templates
(use-package yasnippet)
(use-package yasnippet-snippets)
(yas-global-mode t)
(use-package yatemplate
  :defer 2 ;; WORKAROUND https://github.com/mineo/yatemplate/issues/3
  :config
  (auto-insert-mode)
  (setq auto-insert-alist nil)
  (setq auto-insert-query nil)
  (yatemplate-fill-alist))

;; https://github.com/ensime/ensime-emacs/issues/474
(defun unimacs-company-define-backends (modes-backends-cons)
  (let ((modes    (car modes-backends-cons))
        (backends (cdr modes-backends-cons)))
    (dolist (mode modes)
      (let* ((modename (symbol-name mode))
             (funcname (concat "company-backends-for-" modename))
             (func (intern funcname))
             (hook (intern (concat modename "-hook"))))
        (setf (symbol-function func)
              `(lambda ()
                 (set (make-local-variable 'company-backends)
                      ',backends)))
        (add-hook hook func)))))
;; TODO Fix deprecation
(defun company-yasnippet-or-completion ()
  (interactive)
  (let ((yas-fallback-behavior nil))
    (unless (yas-expand)
      (call-interactively #'company-complete-common))))

;; Save current session
;;(defvar desktop-dirname)
;;(defvar desktop-path)
;;(setq desktop-dirname "~/.cache/emacs/desktop")
;;(setq desktop-path    (list desktop-dirname))
;;(desktop-save-mode t)
;;(clean-buffer-list)

(evil-mode               t)
(global-evil-mc-mode     t)
(ivy-mode                t)
(projectile-mode         t)
(global-auto-revert-mode t)
(winum-mode)

(require 'midnight)
(midnight-mode)
(setq clean-buffer-list-delay-special 0)
(add-to-list 'clean-buffer-list-kill-buffer-names "*Help*")
(add-to-list 'clean-buffer-list-kill-regexps "magit.*")
(add-to-list 'clean-buffer-list-kill-regexps "\\*grep.*")
(add-to-list 'clean-buffer-list-kill-regexps "\\*ENSIME.*")


;; Disable emacs prompts
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t)
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
(setq revert-without-query '(".*"))

(add-to-list 'load-path "~/.emacs.d/lisp")
(load "appearance")    ;; Theme
(load "lang_markdown")
(load "lang_python")
(load "lang_yaml")
(load "layout_dvorak")
(load "minor_clipboard")
(load "minor_git")
(load "mode_elisp")
(load "mode_nix")
(load "mode_rest")
(load "mode_scala")
(load "mode_typescript")
(load "pragmata")
(load custom-file 'noerror)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; global keybindings
(global-unset-key (kbd "C-z"))
(put 'upcase-region 'disabled nil)
