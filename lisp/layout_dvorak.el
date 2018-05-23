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
(mudefine-key (kbd "c") 'evil-previous-line       evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "t") 'evil-next-line           evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "h") 'evil-backward-word-begin evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "n") 'evil-forward-word-end    evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "H") 'evil-backward-char       evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "N") 'evil-forward-char        evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "g") 'evil-beginning-of-line   evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "r") 'evil-end-of-line         evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(define-key evil-normal-state-map (kbd "C-;") 'goto-last-change)
(define-key evil-normal-state-map (kbd "C-.") 'goto-last-change-reverse)

;; Normal and Visual Keys
(mudefine-key (kbd ">")   'hydra-mc-forward/body evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "(")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "(")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "[")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "[")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "{")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "{")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "\"")  (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "\"")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "<")   (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "<"))  evil-motion-state-map evil-normal-state-map evil-visual-state-map)
;; (mudefine-key (kbd "SPC") (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair " "))  evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(define-key evil-normal-state-map (kbd ";") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ";") 'comment-or-uncomment-region)

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
(define-key evil-insert-state-map (kbd "S-SPC") 'company-yasnippet-or-completion)

;; Projectile bindings
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "pff" 'projectile-find-file-in-known-projects)
(evil-ex-define-cmd "pg" 'projectile-grep)
(evil-ex-define-cmd "psp" 'projectile-switch-project)

;; Ensime bindings
(evil-ex-define-cmd "sjt" 'ensime-goto-test-config)
