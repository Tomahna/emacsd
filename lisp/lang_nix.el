;;Nix
(use-package nix-mode
  :demand)
(require 'nix-mode)
(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))
(add-hook 'nix-mode-hook
          (lambda ()
            (company-mode            t)
            (diff-hl-mode            t)
            (diff-hl-flydiff-mode    t)
            (evil-smartparens-mode   t)
            (linum-mode              t)
            (rainbow-mode            t)
            (rainbow-delimiters-mode t)
            (show-paren-mode         t)
            (smartparens-mode        t)))
