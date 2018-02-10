;; global variables
(setq column-number-mode        t)
(setq confirm-kill-emacs        #'y-or-n-p) ;; confirm before exiting emacs (todo remove when bad habits are gone)
(setq create-lockfiles          nil)
(setq inhibit-startup-screen    t)
(setq make-backup-files         nil)
(setq scroll-error-top-bottom   t)
(setq sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4)

;; global keybindings
(global-unset-key (kbd "C-z"))

(global-auto-revert-mode 1)

(use-package magit)
(use-package evil-magit)
