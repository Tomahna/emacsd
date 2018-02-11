;;; ansible-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ansible" "../../../../../../.emacs.d/elpa/ansible-20170926.1951/ansible.el"
;;;;;;  "fd050a368b0aa7ee06de573d2b34b676")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/ansible-20170926.1951/ansible.el

(defvar ansible::key-map (make-sparse-keymap) "\
Keymap for Ansible.")

(autoload 'ansible "ansible" "\
Ansible minor mode.

\(fn &optional ARG)" t nil)

(autoload 'ansible::snippets-initialize "ansible" "\
Initialize Ansible yasnippets.

\(fn)" nil nil)

(eval-after-load 'yasnippet '(ansible::snippets-initialize))

(autoload 'ansible::dict-initialize "ansible" "\
Initialize Ansible auto-complete.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/ansible-20170926.1951/ansible-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ansible-20170926.1951/ansible-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ansible-20170926.1951/ansible.el")
;;;;;;  (23168 1957 746083 133000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ansible-autoloads.el ends here
