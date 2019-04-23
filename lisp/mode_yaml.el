;; Yaml
(use-package yaml-mode
  :diminish yaml-mode
  :mode "\\.yml\\'")
(use-package ansible
  :commands ansible
  :diminish ansible)

(defun configure-yaml ()
  (interactive)

  (ansible                      t)
  (company-mode                 t)
  (diff-hl-mode                 t)
  (diff-hl-flydiff-mode         t)
  (linum-mode                   t)
  (show-paren-mode              t)
  (smartparens-mode             t)
  (yas-minor-mode               t))

(add-hook 'yaml-mode-hook 'configure-yaml)
