;;; yaml-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "yaml-mode" "../../../../../../.emacs.d/elpa/yaml-mode-20180204.2333/yaml-mode.el"
;;;;;;  "46036043b195a45173ac76208e018b2a")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/yaml-mode-20180204.2333/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/yaml-mode-20180204.2333/yaml-mode-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/yaml-mode-20180204.2333/yaml-mode.el")
;;;;;;  (23168 1949 232841 18000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; yaml-mode-autoloads.el ends here
