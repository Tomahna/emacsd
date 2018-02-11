;;Nix
(use-package nix-mode
  :demand)
(require 'nix-mode)
(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))
