(require 'evil)

(use-package origami)

(use-package restclient
  :commands restclient-mode
  :diminish restclient-mode)

(evil-define-key 'normal restclient-mode-map
  (kbd "C")          'restclient-jump-prev
  (kbd "T")          'restclient-jump-next
  (kbd "RET")        'origami-toggle-node
  (kbd "<S-return>") 'origami-toggle-all-nodes)

(defun configure-restclient ()
  (origami-mode t))

(add-hook 'restclient-mode-hook 'configure-restclient)
(add-to-list 'auto-mode-alist '("postman" . restclient-mode))
(find-file "~/.cache/emacs/postman")
