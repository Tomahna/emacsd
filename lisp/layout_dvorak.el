(defvar evil-insert-state-map)
(defvar evil-motion-state-map)
(defvar evil-normal-state-map)
(defvar evil-smartparens-mode-map)
(defvar evil-visual-state-map)
(defvar flycheck-mode-map)
(defvar ivy-minibuffer-map)
(defvar projectile-mode-map)
(defvar treemacs-mode-map)

(defmacro ins-val (val)
 `(lambda () (interactive) (insert ,val)))
(define-minor-mode special-char-mode
 "Toggle Special Character mode"
 nil
 " SpecialChar"
 `(
   (,(kbd "1") . ,(ins-val "&")) (,(kbd "&") . ,(ins-val "1")) (,[kp-1] . ,(ins-val "1"))
   (,(kbd "2") . ,(ins-val "[")) (,(kbd "[") . ,(ins-val "2")) (,[kp-2] . ,(ins-val "2"))
   (,(kbd "3") . ,(ins-val "{")) (,(kbd "{") . ,(ins-val "3")) (,[kp-3] . ,(ins-val "3"))
   (,(kbd "4") . ,(ins-val "}")) (,(kbd "}") . ,(ins-val "4")) (,[kp-4] . ,(ins-val "4"))
   (,(kbd "5") . ,(ins-val "(")) (,(kbd "(") . ,(ins-val "5")) (,[kp-5] . ,(ins-val "5"))
   (,(kbd "6") . ,(ins-val "=")) (,(kbd "=") . ,(ins-val "6")) (,[kp-6] . ,(ins-val "6"))
   (,(kbd "7") . ,(ins-val "*")) (,(kbd "*") . ,(ins-val "7")) (,[kp-7] . ,(ins-val "7"))
   (,(kbd "8") . ,(ins-val ")")) (,(kbd ")") . ,(ins-val "8")) (,[kp-8] . ,(ins-val "8"))
   (,(kbd "9") . ,(ins-val "+")) (,(kbd "+") . ,(ins-val "9")) (,[kp-9] . ,(ins-val "9"))
   (,(kbd "0") . ,(ins-val "]")) (,(kbd "]") . ,(ins-val "0")) (,[kp-0] . ,(ins-val "0"))
   (,[kp-multiply] . ,(ins-val "*"))
   ))
(add-hook 'evil-insert-state-entry-hook (lambda () (special-char-mode t)))
(add-hook 'evil-insert-state-exit-hook  (lambda () (special-char-mode nil)))

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

;; Key unbinding
(define-key global-map (kbd "M-1") nil)
(define-key global-map (kbd "M-2") nil)
(define-key global-map (kbd "M-3") nil)
(define-key global-map (kbd "M-4") nil)
(define-key global-map (kbd "M-5") nil)
(define-key global-map (kbd "M-6") nil)
(define-key global-map (kbd "M-7") nil)
(define-key global-map (kbd "M-8") nil)
(define-key global-map (kbd "M-9") nil)
(define-key global-map (kbd "M-0") nil)
(evil-define-key 'normal evil-mc-key-map           (kbd "M-n") nil)
(evil-define-key 'normal evil-smartparens-mode-map (kbd "C")   nil)

;; Window navigation
(use-package buffer-move)
(mudefine-key (kbd "M-h")     'windmove-left          treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-n")     'windmove-right         treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-t")     'windmove-down          treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-c")     'windmove-up            treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-H")     'buf-move-left          treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-N")     'buf-move-right         treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-T")     'buf-move-down          treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-C")     'buf-move-up            treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-0")     'treemacs-select-window treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-1")     'winum-select-window-1  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-2")     'winum-select-window-2  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-3")     'winum-select-window-3  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-4")     'winum-select-window-4  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-5")     'winum-select-window-5  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-6")     'winum-select-window-6  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-7")     'winum-select-window-7  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-8")     'winum-select-window-8  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-9")     'winum-select-window-9  treemacs-mode-map evil-normal-state-map)
(mudefine-key (kbd "M-<tab>") 'switch-to-buffer       evil-normal-state-map evil-visual-state-map)

(mudefine-key (kbd "M-e")     'evil-ex                treemacs-mode-map evil-normal-state-map)

;; Motion
(mudefine-key (kbd "c") 'evil-previous-line       evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "t") 'evil-next-line           evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "h") 'evil-backward-word-begin evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "n") 'evil-forward-word-end    evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "H") 'evil-backward-char       evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "N") 'evil-forward-char        evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "g") 'evil-beginning-of-line   evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "r") 'evil-end-of-line         evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "C") 'highlight-symbol-prev    evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "T") 'highlight-symbol-next    evil-motion-state-map evil-normal-state-map evil-visual-state-map)
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
