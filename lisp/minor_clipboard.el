;; Clipboard
(use-package clipmon)
(use-package popup-kill-ring)
(add-to-list 'after-init-hook 'clipmon-mode-start)

(evil-define-key 'normal popup-kill-ring-keymap (kbd "C-p") 'popup-kill-ring)
(evil-define-key 'visual popup-kill-ring-keymap (kbd "C-p") 'popup-kill-ring)
