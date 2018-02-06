;; Elpy require multiple packages in order to work correctly
;; Cf elpy-config
(use-package elpy)
(use-package flycheck)
(add-hook 'python-mode-hook
  (lambda ()
    (setq show-trailing-whitespace t)
    (elpy-mode)
    (flycheck-mode)
    (message "Running python hook")))
