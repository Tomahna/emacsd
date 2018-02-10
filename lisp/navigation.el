;; Add vim shortcuts
(use-package evil
  :config
  (evil-mode 1))

;; Add Ivy (completion)
(use-package ivy
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d ")
  :config
  (ivy-mode 1))

;; Add projectile (project mode)
(use-package projectile
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line '(:eval (format " Project[%s]" (projectile-project-name))))
  :config
  (projectile-mode))

;; Add directory tree
(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-projectile)
(setq treemacs-change-root-without-asking t)
(setq treemacs-collapse-dirs              10)
(setq treemacs-follow-after-init          t)
(setq treemacs-is-never-other-window      t) ;;todo
(setq treemacs-never-persist              t)
(setq treemacs-recenter-after-file-follow t)
(setq treemacs-recenter-after-tag-follow  t)
(setq treemacs-show-hidden-files          t)
(setq treemacs-silent-filewatch           t)
(setq treemacs-silent-refresh             t)
(setq treemacs-sorting                    'alphabetic-desc)
(setq treemacs-tag-follow-cleanup         t)
(setq treemacs-tag-follow-delay           1.5)
(setq treemacs-width                      30)
(treemacs-define-custom-icon (all-the-icons-icon-for-file "name.sbt") "sbt")
(treemacs-define-custom-icon (all-the-icons-icon-for-file "name.scala") "scala")
(treemacs-follow-mode t)
(treemacs-filewatch-mode t)
(if (not (null (executable-find "python3"))) (treemacs-git-mode 'extended) (treemacs-git-mode 'simple))

(global-set-key [f8] 'treemacs-toggle)

(add-hook 'projectile-after-switch-project-hook #'treemacs-projectile)
(add-hook 'projectile-find-file-hook #'treemacs-projectile)
