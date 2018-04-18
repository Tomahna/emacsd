(defvar evil-insert-state-map)
(defvar evil-motion-state-map)
(defvar evil-normal-state-map)
(defvar evil-visual-state-map)
(defvar flycheck-mode-map)
(defvar ivy-minibuffer-map)
(defvar projectile-mode-map)
(defvar treemacs-mode-map)

(use-package hydra)
(defhydra hydra-mc-forward ()
  "multicursor"
  ("n" er/expand-region)
  ("h" er/contract-region)

  ;; MC marks
  ("c" evil-mc-make-and-goto-prev-match)
  ("t" evil-mc-make-and-goto-next-match)
  ("r" evil-mc-make-all-cursors :exit t)
;;  ("C" mc/unmark-next-like-this)
;;  ("T" mc/unmark-previous-like-this)

  ;; SP Wrapping and unwrapping
  ("g" evil-mc-undo-all-cursors :exit t))


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
(mudefine-key (kbd "C-<tab>") 'switch-to-buffer evil-normal-state-map evil-visual-state-map)

;; Motion
(mudefine-key (kbd "c") 'previous-line     evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "t") 'next-line         evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "h") 'backward-word     evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "n") 'forward-word      evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "H") 'backward-char     evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "N") 'forward-char      evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "g") 'beginning-of-line evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "r") 'end-of-line       evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(define-key evil-normal-state-map (kbd "C-;") 'goto-last-change)
(define-key evil-normal-state-map (kbd "C-.") 'goto-last-change-reverse)

;; TODO Disable only locally
(define-key flycheck-mode-map "\C-c" nil)
(define-key projectile-mode-map "\C-c" nil)
(define-key ivy-minibuffer-map "\C-c" 'ivy-previous-line)
(define-key ivy-minibuffer-map "\C-t" 'ivy-next-line)

;; Insert Mode Keys
(define-key evil-insert-state-map (kbd "C-h") 'backward-char)
(define-key evil-insert-state-map (kbd "C-t") 'next-line)
(define-key evil-insert-state-map (kbd "C-c") 'previous-line)
(define-key evil-insert-state-map (kbd "C-n") 'forward-char)
(define-key evil-insert-state-map (kbd "C-r") 'forward-word)
(define-key evil-insert-state-map (kbd "C-g") 'backward-word)
(define-key evil-insert-state-map (kbd "C-R") 'end-of-line)
(define-key evil-insert-state-map (kbd "C-G") 'beginning-of-line)
(define-key evil-insert-state-map (kbd "C->") 'hydra-mc-forward/body)

;; Normal Keys
(define-key evil-normal-state-map (kbd ">") 'hydra-mc-forward/body)
(define-key evil-normal-state-map (kbd "(") (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "(")))
(define-key evil-normal-state-map (kbd "[") (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "[")))
(define-key evil-normal-state-map (kbd "{") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "{")))
(define-key evil-normal-state-map (kbd "\"") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "\"")))
(define-key evil-normal-state-map (kbd "<") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "<")))
(define-key evil-normal-state-map (kbd "SPC") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair " ")))

;; Visual Keys
(define-key evil-visual-state-map (kbd ">") 'hydra-mc-forward/body)
(define-key evil-visual-state-map (kbd "(") (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "(")))
(define-key evil-visual-state-map (kbd "[") (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "[")))
(define-key evil-visual-state-map (kbd "{") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "{")))
(define-key evil-visual-state-map (kbd "\"") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "\"")))
(define-key evil-visual-state-map (kbd "<") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "<")))
(define-key evil-visual-state-map (kbd "SPC") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair " ")))

;; Projectile bindings
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "pff" 'projectile-find-file-in-known-projects)
(evil-ex-define-cmd "pg" 'projectile-grep)
(evil-ex-define-cmd "psp" 'projectile-switch-project)

;; Company bindings
(define-key evil-insert-state-map (kbd "S-SPC") 'company-complete-common)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)
