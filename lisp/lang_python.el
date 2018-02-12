;; Elpy require multiple packages in order to work correctly
;; Cf elpy-config
(use-package elpy)
(use-package flycheck)
(add-hook 'python-mode-hook
          (lambda ()
            (setq show-trailing-whitespace t)
            (diff-hl-mode                 t)
            (diff-hl-flydiff-mode         t)
            (elpy-mode)
            (evil-smartparens-mode        t)
            (flycheck-mode)
            (highlight-indent-guides-mode t)
            (highlight-symbol-mode        t)
            (linum-mode                   t)
            (rainbow-mode                 t)
            (rainbow-delimiters-mode      t)
            (show-paren-mode              t)
            (smartparens-mode             t)

            (hlinum-activate)))
