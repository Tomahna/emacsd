(require 'company)
(require 'evil)
(require 'projectile)

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

(evil-define-key 'normal ensime-mode-map
    "e" 'ensime-edit-definition
    "E" 'ensime-pop-find-definition-stack)

(defun configure-scala ()
  (defvar highlight-symbol-enabled)
  (setq highlight-symbol-enabled  t)
  (setq show-trailing-whitespace  t)

  (company-mode                 t)
  (diff-hl-mode                 t)
  (diff-hl-flydiff-mode         t)
  (linum-mode                   t)
  (show-paren-mode              t)
  (smartparens-mode             t)
  (yas-minor-mode               t)

  (if (projectile-file-exists-p ".ensime")
      (ensime))

  (scala-mode:goto-start-of-code))



(defun configure-ensime ()
  (unimacs-company-define-backends
   '((ensime-mode) . ((company-yasnippet :with ensime-company)
                      (company-dabbrev-code :with company-dabbrev company-yasnippet)
                      company-files))))

(add-hook 'scala-mode-hook 'configure-scala)
(add-hook 'ensime-mode-hook 'configure-ensime)

(defun scala-package ()
  (reduce (lambda (e1 e2) (concat e1 (concat "." e2)))
  (seq-drop
  (seq-drop-while (lambda (elt) (not (string= elt "scala")))
                  (split-string (replace-regexp-in-string "Directory " "" (pwd)) "/" t)) 1)))