;; Scala
(use-package ensime
  :commands ensime
  :init
  (defvar ensime-startup-snapshot-notification)
  (setq ensime-startup-notification nil)
  (setq ensime-startup-snapshot-notification nil)
  (add-hook 'ensime-server-process-start-hook (lambda () (setq projectile-mode-line ""))))
(use-package sbt-mode)
(use-package scala-mode)

(add-hook 'scala-mode-hook
          (lambda ()
            (setq projectile-mode-line      "")
            (setq show-trailing-whitespace  t)

            (company-mode                 t)
            (diff-hl-mode                 t)
            (diff-hl-flydiff-mode         t)
            (show-paren-mode              t)
            (smartparens-mode             t)
            (yas-minor-mode               t)

            (ensime)
            (scala-mode:goto-start-of-code)))
