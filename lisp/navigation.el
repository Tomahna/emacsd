;; Add vim shortcuts
(use-package evil
  :demand)
(require 'evil)
(evil-mode 1)

;; Add projectile (project mode)
(use-package projectile
  :demand)
(projectile-mode)
(setq projectile-mode-line '(:eval (format " Project[%s]" (projectile-project-name))))

;; Add directory tree
(use-package neotree)
(require 'neotree)
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-autorefresh t)

;; Add Ivy (completion)
(use-package ivy
  :demand)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "%d/%d ")
(ivy-mode 1)
(setq projectile-completion-system 'ivy)
