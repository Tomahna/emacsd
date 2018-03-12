(defvar evil-insert-state-map)
(defvar evil-normal-state-map)
(defvar evil-visual-state-map)
(defvar flycheck-mode-map)
(defvar ivy-minibuffer-map)
(defvar projectile-mode-map)
(defvar treemacs-mode-map)
(defvar yas-minor-mode-map)

(use-package hydra)
(defhydra hydra-mc-forward ()
  "multicursor"
  ("n" er/expand-region)
  ("h" er/contract-region)
  ("<" mc/edit-beginnings-of-lines :exit t)
  (">" mc/edit-ends-of-lines :exit t)
  ("c" mc/mark-previous-like-this)
  ("t" mc/mark-next-like-this)
  ("C" mc/unmark-next-like-this)
  ("T" mc/unmark-previous-like-this)
  ("g" mc/keyboard-quit :exit t)
  ("r" mc/mark-all-like-this :exit t))

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

(define-key evil-normal-state-map (kbd "C-;") 'goto-last-change)
(define-key evil-normal-state-map (kbd "C-.") 'goto-last-change-reverse)

;; TODO Disable only locally
(define-key flycheck-mode-map "\C-c" nil)
(define-key projectile-mode-map "\C-c" nil)
(define-key yas-minor-mode-map "\C-c" nil)
(define-key ivy-minibuffer-map "\C-c" 'ivy-previous-line)
(define-key ivy-minibuffer-map "\C-t" 'ivy-next-line)

;; Insert Mode Keys
(define-key evil-insert-state-map (kbd "C-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-t") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-c") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-n") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-r") 'evil-forward-word-end)
(define-key evil-insert-state-map (kbd "C-g") 'evil-backward-word-begin)
(define-key evil-insert-state-map (kbd "C-R") 'evil-end-of-line)
(define-key evil-insert-state-map (kbd "C-G") 'evil-beginning-of-line)
(define-key evil-insert-state-map (kbd "C-<") 'hydra-mc-forward/body)
(define-key evil-insert-state-map (kbd "C->") 'hydra-mc-forward/body)

;; Normal Keys
(define-key evil-normal-state-map (kbd "h") 'evil-backward-char)
(define-key evil-normal-state-map (kbd "t") 'evil-next-line)
(define-key evil-normal-state-map (kbd "c") 'evil-previous-line)
(define-key evil-normal-state-map (kbd "n") 'evil-forward-char)
(define-key evil-normal-state-map (kbd "r") 'evil-forward-word-end)
(define-key evil-normal-state-map (kbd "g") 'evil-backward-word-begin)
(define-key evil-normal-state-map (kbd "R") 'evil-end-of-line)
(define-key evil-normal-state-map (kbd "G") 'evil-beginning-of-line)
(define-key evil-normal-state-map (kbd "<") 'hydra-mc-forward/body)
(define-key evil-normal-state-map (kbd ">") 'hydra-mc-forward/body)
(define-key evil-normal-state-map (kbd "C-<tab>") 'projectile-find-file)

;; Visual Keys
(define-key evil-visual-state-map (kbd "h") 'evil-backward-char)
(define-key evil-visual-state-map (kbd "t") 'evil-next-line)
(define-key evil-visual-state-map (kbd "c") 'evil-previous-line)
(define-key evil-visual-state-map (kbd "n") 'evil-forward-char)
(define-key evil-visual-state-map (kbd "r") 'evil-forward-word-end)
(define-key evil-visual-state-map (kbd "g") 'evil-backward-word-begin)
(define-key evil-visual-state-map (kbd "R") 'evil-end-of-line)
(define-key evil-visual-state-map (kbd "G") 'evil-beginning-of-line)
(define-key evil-visual-state-map (kbd "<") 'hydra-mc-forward/body)
(define-key evil-visual-state-map (kbd ">") 'hydra-mc-forward/body)
(define-key evil-visual-state-map (kbd "C-<tab>") 'projectile-find-file)

;; Projectile bindings
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "pff" 'projectile-find-file-in-known-projects)
(evil-ex-define-cmd "pg" 'projectile-grep)
(evil-ex-define-cmd "psp" 'projectile-switch-project)

;; Company bindings
(define-key evil-insert-state-map (kbd "S-SPC") 'company-complete-common)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)