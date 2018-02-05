(global-auto-revert-mode 1)

;; Add company mode (autocompletion)
(use-package company
  :demand)
(add-hook 'prog-mode-hook 'global-company-mode)
(add-hook 'yaml-mode-hook 'global-company-mode)

(use-package multiple-cursors 
  :demand)
(require 'multiple-cursors)

(use-package smartparens)
(require 'smartparens-config)
(use-package evil-smartparens)
(add-hook 'prog-mode-hook #'smartparens-mode)
(add-hook 'yaml-mode-hook #'smartparens-mode)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

(use-package magit)
(use-package evil-magit)
