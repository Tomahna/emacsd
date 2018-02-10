;; global variables
(setq backup-by-copying         t)
(setq backup-directory-alist    `(("." . "~/.cache/emacs/backup")))
(setq confirm-kill-emacs        #'y-or-n-p) ;; confirm before exiting emacs (todo remove when bad habits are gone)
(setq create-lockfiles          nil)
(setq inhibit-startup-screen    t)
(setq scroll-error-top-bottom   t)
(setq sentence-end-double-space nil)

;; buffer local variables
(setq-default c-basic-offset   4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width        4)

(use-package magit)
(use-package evil-magit)

(global-auto-revert-mode 1)

;; global keybindings
(global-unset-key (kbd "C-z"))
