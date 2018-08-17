;;Nix
(use-package nix-mode
  :demand)
(use-package company-nixos-options
  :demand)
(require 'nix-mode)
(require 'company-nixos-options)

(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))
(add-hook 'nix-mode-hook
          (lambda ()
            (add-to-list 'company-backends 'company-nixos-options)

            (company-mode            t)
            (diff-hl-mode            t)
            (diff-hl-flydiff-mode    t)
            (evil-smartparens-mode   t)
            (linum-mode              t)
            (rainbow-mode            t)
            (rainbow-delimiters-mode t)
            (show-paren-mode         t)
            (smartparens-mode        t)))
