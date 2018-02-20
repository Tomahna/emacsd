;; Elpy require multiple packages in order to work correctly
;; Cf elpy-config
(use-package elpy)
(use-package flycheck)
(add-hook 'python-mode-hook
          (lambda ()
            (defvar highlight-symbol-enabled)
            (setq highlight-symbol-enabled t)
            (setq show-trailing-whitespace t)

            (diff-hl-mode                 t)
            (diff-hl-flydiff-mode         t)
            (elpy-mode                    t)
            (evil-smartparens-mode        t)
            (flycheck-mode                t)
            (highlight-indent-guides-mode t)
            (linum-mode                   t)
            (rainbow-mode                 t)
            (rainbow-delimiters-mode      t)
            (show-paren-mode              t)
            (smartparens-mode             t)

            (hlinum-activate)))
