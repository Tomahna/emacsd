(use-package diff-hl)
(use-package git-timemachine
  :commands git-timemachine)
(use-package evil-magit)
(use-package magit
  :config
  (magit-auto-revert-mode -1)      ;; Workaround https://github.com/dgutov/diff-hl/issues/65
  (setq magit-repository-directories '(("~/Workspaces/" . 4)))
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))
