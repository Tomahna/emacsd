(use-package diminish)
(use-package company
  :commands company-mode
  :diminish company-mode)
(use-package eldoc
  :commands eldoc-mode
  :diminish eldoc-mode
  :init
  (setq eldoc-idle-delay 0.1))
(use-package evil-smartparens
  :commands evil-smartparens-mode
  :diminish evil-smartparens-mode)
(use-package flycheck
  :commands flycheck-mode
  :diminish flycheck-mode)
(use-package hlinum
  :commands hlinum-activate)
(use-package highlight-indent-guides
  :commands highligh-indent-guides-mode
  :init
  (setq highlight-indent-guides-method 'character))
(use-package linum
  :commands linum-mode
  :diminish linum-mode
  :init
  (setq linum-format "%d "))
(use-package rainbow-delimiters
  :commands rainbow-delimiters-mode
  :diminish rainbow-delimiters-mode)
(use-package rainbow-mode
  :commands rainbow-mode
  :diminish rainbow-mode)
(use-package smartparens
  :diminish smartparens-mode
  :commands smartparens-mode
            smartparens-strict-mode)
(use-package undo-tree
  :diminish undo-tree-mode
  :commands undo-tree-mode)
(use-package yasnippet
  :commands yas-minor-mode
  :diminish yas-minor-mode)
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (defvar highlight-symbol-enabled)
            (setq highlight-symbol-enabled   t)
            (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))
            (setq show-trailing-whitespace   t)

            (company-mode                 t)
            (diff-hl-mode                 t)
            (diff-hl-flydiff-mode         t)
            (eldoc-mode                   t)
            (evil-smartparens-mode        t)
            (flycheck-mode                t)
            (highlight-indent-guides-mode t)
            (linum-mode                   t)
            (rainbow-mode                 t)
            (rainbow-delimiters-mode      t)
            (show-paren-mode              t)
            (smartparens-mode             t)
            (undo-tree-mode               t)
            (yas-minor-mode               t)

            (hlinum-activate)))
