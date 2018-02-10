;; global variables
(defvar show-paren-delay)

(setq backup-by-copying         t)
(setq backup-directory-alist    `(("." . "~/.cache/emacs/backup")))
(setq confirm-kill-emacs        #'y-or-n-p) ;; confirm before exiting emacs (todo remove when bad habits are gone)
(setq create-lockfiles          nil)
(setq inhibit-startup-screen    t)
(setq scroll-error-top-bottom   t)
(setq sentence-end-double-space nil)
(setq show-trailing-whitespace  t)
(setq show-paren-delay          0)

;; buffer local variables
(setq-default c-basic-offset   4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width        4)

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
