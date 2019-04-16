(require 'evil-mc)
(require 'evil)
(require 'expand-region)
(require 'flycheck)
(require 'hydra)
(require 'ivy)
(require 'projectile)
(require 'smartparens)
(require 'treemacs)

(use-package hydra)
(defhydra hydra-mc-forward (:hint nil)
  "
  ^MultiCursor Hydra^
  ^Movement^                    | ^Region^             | ^Cursors^
  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  _c_: mark previous occurence  | _n_: expand region   | _<space>_:     mark here
  _t_: mark next occurence      | _h_: contract region | _<backspace>_: undo cursor
  _C_: goto previous occurrence |                    | _r_:           mark all occurence
  _T_: goto next occurrence     |                    | _g_:           unmark all occurence
  "
  ("n" er/expand-region)
  ("h" er/contract-region)

  ;; MC marks
  ("c"           evil-mc-make-and-goto-prev-match)
  ("C"           evil-mc-skip-and-goto-prev-match)
  ("t"           evil-mc-make-and-goto-next-match)
  ("T"           evil-mc-skip-and-goto-next-match)
  ("<space>"     evil-mc-make-cursor-here)
  ("<backspace>" evil-mc-undo-cursor)
  ("r"           evil-mc-make-all-cursors :exit t)
  ("g"           evil-mc-undo-all-cursors :exit t))

(defhydra hydra-sp ()
  "smartparens"
  ("n" sp-forward-slurp-sexp)
  ("h" sp-backward-slurp-sexp)
  ("N" sp-forward-barf-sexp)
  ("H" sp-backward-barf-sexp)
  ("c" sp-beginning-of-sexp)
  ("t" sp-end-of-sexp)
  ("{" sp-rewrap-sexp)
  ("d" sp-kill-sexp))

(defun mudefine-key (KEY FUN &rest KEYMAPS)
  (dolist (KEYMAP KEYMAPS)
    (define-key KEYMAP KEY FUN)))

;; Key unbinding
(define-key global-map (kbd "C-h h") nil)
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
(evil-define-key 'normal evil-smartparens-mode-map (kbd "c")   nil)


(evil-define-key nil treemacs-mode-map (kbd "C-c f") 'treemacs-create-file)
(evil-define-key nil treemacs-mode-map (kbd "C-c d") 'treemacs-create-dir)
(evil-define-key nil treemacs-mode-map (kbd "M-c") 'treemacs-move-project-up)
(evil-define-key nil treemacs-mode-map (kbd "M-t") 'treemacs-move-project-down)
(evil-define-key nil treemacs-mode-map (kbd "C-c d") 'treemacs-create-dir)
(evil-define-key nil global-map        (kbd "<f5>") 'revert-buffer)
(evil-define-key nil magit-mode-map    (kbd "<f5>") 'magit-refresh)

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
(mudefine-key (kbd "M-<tab>") 'ivy-switch-buffer   evil-normal-state-map evil-visual-state-map)

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

;; Smartparens Keys
(mudefine-key (kbd "(")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "(")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "[")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "[")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "{")   (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "{")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "\"")  (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "\"")) evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "<")   (lambda (&optional arg) (interactive "P")(sp-wrap-with-pair "<"))  evil-motion-state-map evil-normal-state-map evil-visual-state-map)
(mudefine-key (kbd "C-3") 'hydra-sp/body evil-normal-state-map evil-visual-state-map)


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
(evil-ex-define-cmd "W" 'evil-save)
(evil-ex-define-cmd "pf" 'projectile-find-file)
(evil-ex-define-cmd "p4f" 'projectile-find-file-other-window)
(evil-ex-define-cmd "p5f" 'projectile-find-file-other-frame)
(evil-ex-define-cmd "pc" 'counsel-etags-list-tag)
(evil-ex-define-cmd "pg" 'counsel-ag)
(evil-ex-define-cmd "pr" 'projectile-replace)
(evil-ex-define-cmd "ps" 'projectile-switch-project)
