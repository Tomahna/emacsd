;; Scala
(defun scala-package ()
  (reduce (lambda (e1 e2) (concat e1 (concat "." e2)))
  (seq-drop
  (seq-drop-while (lambda (elt) (not (string= elt "scala")))
    (split-string (replace-regexp-in-string "Directory " "" (pwd)) "/" t)) 1)))

(use-package ensime
  :commands ensime
  :init
  (defvar ensime-startup-snapshot-notification)
  (setq ensime-startup-notification nil)
  (setq ensime-startup-snapshot-notification nil)
  (add-hook 'ensime-server-process-start-hook (lambda () (setq projectile-mode-line ""))))
(use-package sbt-mode)
(use-package scala-mode)

(defun configure-scala ()
  (defvar highlight-symbol-enabled)
  (setq highlight-symbol-enabled  t)
  (setq projectile-mode-line      "")
  (setq show-trailing-whitespace  t)

  (company-mode                 t)
  (diff-hl-mode                 t)
  (diff-hl-flydiff-mode         t)
  (linum-mode                   t)
  (show-paren-mode              t)
  (smartparens-mode             t)
  (yas-minor-mode               t)

  (ensime)
  (scala-mode:goto-start-of-code))

(defun configure-ensime ()
  (define-key scala-mode-map "e" 'ensime-edit-definition)
  (define-key scala-mode-map "E" 'ensime-pop-find-definition-stack)
  (unimacs-company-define-backends
   '((ensime-mode) . ((company-yasnippet :with ensime-company)
                      (company-dabbrev-code :with company-dabbrev company-yasnippet)
                      company-files))))

(add-hook 'scala-mode-hook 'configure-scala)
(add-hook 'ensime-mode-hook 'configure-ensime)
