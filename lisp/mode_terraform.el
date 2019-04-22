(use-package terraform-mode
  :mode "\\.tf\\'")
(use-package company-quickhelp
  :commands company-quickhelp-mode)
(use-package company-terraform
  :commands company-terraform-init)

(defun configure-terraform ()
  (company-terraform-init)
  (company-mode         t)
  (company-quickhelp-mode)
  (diff-hl-mode         t)
  (diff-hl-flydiff-mode t)
  (linum-mode           t)
  (show-paren-mode      t)
  (smartparens-mode     t))

(add-hook 'terraform-mode-hook 'configure-terraform)
