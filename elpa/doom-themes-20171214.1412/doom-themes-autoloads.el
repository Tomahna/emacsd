;;; doom-themes-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "doom-themes" "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes.el"
;;;;;;  "1468c1b7518485df3f7cdbddc26ef033")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes.el

(autoload 'doom-color "doom-themes" "\
Retrieve a specific color named NAME (a symbol) from the current theme.

\(fn NAME &optional TYPE)" nil nil)

(autoload 'doom-ref "doom-themes" "\
TODO

\(fn FACE PROP &optional CLASS)" nil nil)

(autoload 'doom-themes-set-faces "doom-themes" "\
Customize THEME (a symbol) with FACES.

\(fn THEME &rest FACES)" nil t)

(function-put 'doom-themes-set-faces 'lisp-indent-function 'defun)

(autoload 'doom-themes-org-config "doom-themes" "\
Enable custom fontification and improves doom-themes integration with org-mode.

\(fn)" nil nil)

(autoload 'doom-themes-neotree-config "doom-themes" "\
Install doom-themes' neotree configuration.

Includes an Atom-esque icon theme and highlighting based on filetype.

\(fn)" nil nil)

(autoload 'doom-themes-visual-bell-config "doom-themes" "\
Enable flashing the mode-line on error.

\(fn)" nil nil)

(autoload 'doom-themes-visual-bell-fn "doom-themes" "\
Blink the mode-line red briefly. Set `ring-bell-function' to this to use it.

\(fn)" nil nil)

(when (and (boundp 'custom-theme-load-path) load-file-name) (let* ((base (file-name-directory load-file-name)) (dir (expand-file-name "themes/" base))) (add-to-list 'custom-theme-load-path (or (and (file-directory-p dir) dir) base))))

(autoload 'doom-brighten-minibuffer "doom-themes" "\
Does nothing. `doom-brighten-minibuffer' has been moved to the `solaire-mode'
package as `solaire-mode-in-minibuffer'. This function is deprecated.

\(fn)" nil nil)

(autoload 'doom-buffer-mode "doom-themes" "\
Does nothing. `doom-buffer-mode' has been moved to the `solaire-mode'
package. This function is deprecated.

\(fn &optional ARG)" t nil)

(autoload 'doom-buffer-mode-maybe "doom-themes" "\
Does nothing. `doom-buffer-mode' has been moved to the `solaire-mode'
package. This function is deprecated.

\(fn)" nil nil)

(autoload 'doom-themes-nlinum-config "doom-themes" "\
Does nothing. This functionality has been moved to the `nlinum-hl' package.
This function is deprecated.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-molokai-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-nova-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-one-light-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-one-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-peacock-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-common.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-neotree.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-nlinum.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-org.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-themes.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-tomorrow-night-theme.el"
;;;;;;  "../../../../../../.emacs.d/elpa/doom-themes-20171214.1412/doom-vibrant-theme.el")
;;;;;;  (23097 32022 283699 260000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; doom-themes-autoloads.el ends here
