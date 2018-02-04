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

;; Neotree bindings
(global-set-key [f8] 'neotree-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "<S-tab>") 'neotree-select-up-node)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "y") 'neotree-copy-node)
(evil-define-key 'normal neotree-mode-map (kbd "c") 'neotree-create-node)
(evil-define-key 'normal neotree-mode-map (kbd "r") 'neotree-rename-node)
(evil-define-key 'normal neotree-mode-map (kbd "d") 'neotree-delete-node)

;; Company bindings
(define-key evil-insert-state-map (kbd "S-SPC") 'company-complete-common)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)
