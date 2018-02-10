;; Buffer Navigation
(define-key evil-normal-state-map (kbd "C-<up>") 'windmove-up)
(define-key evil-normal-state-map (kbd "C-<down>") 'windmove-down)
(define-key evil-normal-state-map (kbd "C-<left>") 'windmove-left)
(define-key evil-normal-state-map (kbd "C-<right>") 'windmove-right) 
(define-key evil-normal-state-map (kbd "C-<tab>") 'switch-to-buffer)

;; Multicursor
(define-key evil-insert-state-map (kbd "S-<up>") 'mc/mark-previous-like-this)
(define-key evil-insert-state-map (kbd "S-<down>") 'mc/mark-next-like-this)

;; Projectile bindings
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "pff" 'projectile-find-file-in-known-projects)
(evil-ex-define-cmd "pg" 'projectile-grep)
(evil-ex-define-cmd "psp" 'projectile-switch-project)

;; Company bindings
(define-key evil-insert-state-map (kbd "S-SPC") 'company-complete-common)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)
