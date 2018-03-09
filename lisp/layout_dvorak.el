(defun mudefine-key (KEY FUN &rest KEYMAPS)
  (interactive)
  (dolist (KEYMAP KEYMAPS)
    (define-key KEYMAP KEY FUN)))

;; Buffer navigation
(mudefine-key (kbd "C-0") 'treemacs-select-window treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-1") 'winum-select-window-1 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-2") 'winum-select-window-2 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-3") 'winum-select-window-3 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-4") 'winum-select-window-4 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-5") 'winum-select-window-5 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-6") 'winum-select-window-6 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-7") 'winum-select-window-7 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-8") 'winum-select-window-8 treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "C-9") 'winum-select-window-9 treemacs-mode-map evil-normal-state-map)
(define-key evil-normal-state-map (kbd "C-<tab>") 'switch-to-buffer)

(define-key evil-normal-state-map (kbd "C-;") 'goto-last-change)
(define-key evil-normal-state-map (kbd "C-.") 'goto-last-change-reverse)

;; expand region
(define-key evil-normal-state-map (kbd "C-=") 'er/expand-region)

(define-key evil-visual-state-map (kbd "<") 'mc/mark-previous-like-this)
(define-key evil-visual-state-map (kbd ">") 'mc/mark-next-like-this)

;; Projectile bindings
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "pff" 'projectile-find-file-in-known-projects)
(evil-ex-define-cmd "pg" 'projectile-grep)
(evil-ex-define-cmd "psp" 'projectile-switch-project)

;; Company bindings
(define-key evil-insert-state-map (kbd "S-SPC") 'company-complete-common)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)
