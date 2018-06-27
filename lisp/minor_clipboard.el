(require 'evil)

(use-package clipmon)
(use-package popup-kill-ring)
(add-to-list 'after-init-hook 'clipmon-mode-start)

(evil-define-key 'normal 'global (kbd "C-p") 'popup-kill-ring)
(evil-define-key 'insert 'global (kbd "C-p") 'popup-kill-ring)
(evil-define-key 'visual 'global (kbd "C-p") 'popup-kill-ring)
