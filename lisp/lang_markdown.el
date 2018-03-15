(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(add-hook 'markdown-mode-hook
          (lambda ()
            (setq-default flyspell-issue-message-flag nil)
            (ispell-change-dictionary "fr-toutesvariantes")

            (diff-hl-mode)
            (diff-hl-flydiff-mode         t)
            (evil-smartparens-mode        t)
            (flycheck-mode                t)
            (linum-mode                   t)
            (rainbow-mode                 t)
            (rainbow-delimiters-mode      t)
            (show-paren-mode              t)))
