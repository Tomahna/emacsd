;; Yaml
(use-package yaml-mode
  :demand)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; Ansible
(use-package ansible
  :demand)
(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
