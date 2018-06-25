(use-package restclient
  :commands restclient-mode
  :diminish restclient-mode)

(evil-define-key 'normal restclient-mode-map
  (kbd "C")          'restclient-jump-prev
  (kbd "T")          'restclient-jump-next
  (kbd "RET")        'origami-toggle-node
  (kbd "<S-return>") 'origami-toggle-all-nodes)

(defun configure-restclient ()
  (message "Hello je restore restclient tkt pas")
  (origami-mode t)
  (origami-close-all-nodes (current-buffer)))

(add-hook 'restclient-mode-hook 'configure-restclient)
(with-current-buffer (get-buffer-create "postman-scratch*")
  (restclient-mode))
