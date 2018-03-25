;; Yaml
(use-package yaml-mode
  :diminish yaml-mode)
(use-package ansible
  :commands ansible
  :diminish ansible)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(defun configure-yaml ()
  (interactive)

  (setq highlight-symbol-enabled  t)
  (setq show-trailing-whitespace  t)

  (ansible                      t)
  (company-mode                 t)
  (diff-hl-mode                 t)
  (diff-hl-flydiff-mode         t)
  (linum-mode                   t)
  (show-paren-mode              t)
  (smartparens-mode             t)
  (yas-minor-mode               t))

(add-hook 'yaml-mode-hook 'configure-yaml)
