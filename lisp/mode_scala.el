(require 'company)
(require 'evil)
(require 'projectile)

;; Enable scala-mode and sbt-mode
(use-package scala-mode
  :mode "\\.s\\(cala\\|bt\\)$")

(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map))

;; Enable nice rendering of diagnostics like compile errors.
(use-package flycheck
  :init (global-flycheck-mode))

(use-package lsp-mode
 :init (setq lsp-prefer-flymake nil))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))

(use-package company-lsp
  :config
  (setq company-lsp-async t))

(use-package lsp-treemacs)

(use-package lsp-scala
  :after scala-mode
  :demand t
  ;; Optional - enable lsp-scala automatically in scala files
  :hook (scala-mode . lsp))

(defun configure-scala ()
  (setq show-trailing-whitespace  t)

  (add-pragmatapro-prettify-symbols-alist)
  (company-mode                 t)
  (diff-hl-flydiff-mode         t)
  (diff-hl-mode                 t)
  (flyspell-prog-mode            )
  (highlight-symbol-mode        t)
  (linum-mode                   t)
  (prettify-symbols-mode        t)
  (rainbow-delimiters-mode      t)
  (show-paren-mode              t)
  (smartparens-mode             t)
  (yas-minor-mode               t)

  (scala-mode:goto-start-of-code))

(defun configure-lsp ()
  (setq lsp-ui-sideline-enable nil)

  ;; All completions instead of just lsp
  (run-with-timer 0.1 nil (lambda () (push '(company-dabbrev-code company-yasnippet company-lsp) company-backends))))

(add-hook 'scala-mode-hook 'configure-scala)
(add-hook 'lsp-mode-hook 'configure-lsp)

(evil-define-key 'normal 'scala-mode-map (kbd "C-e") 'counsel-imenu)

(defun scala/remove-dot-in-string (text)
  "Remove dot in string"
  (replace-regexp-in-string "\\." "" text))
