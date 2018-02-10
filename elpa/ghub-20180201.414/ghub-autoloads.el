;;; ghub-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ghub" "../../../../../../.emacs.d/elpa/ghub-20180201.414/ghub.el"
;;;;;;  "75e04d50fdad0c10a4e0d3c0575c0aac")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/ghub-20180201.414/ghub.el

(autoload 'ghub-create-token "ghub" "\
Create, store and return a new token.

HOST is the Github instance, usually \"api.github.com\".
USERNAME is the name of a user on that instance.
PACKAGE is the package that will use the token.
SCOPES are the scopes the token is given access to.

\(fn HOST USERNAME PACKAGE SCOPES)" t nil)

(autoload 'ghub-token-scopes "ghub" "\
Return and echo the scopes of the specified token.
This is intended for debugging purposes only.  The user
has to provide several values including their password.

\(fn HOST USERNAME PACKAGE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/ghub-20180201.414/ghub-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ghub-20180201.414/ghub-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ghub-20180201.414/ghub.el")
;;;;;;  (23166 50985 633809 526000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ghub-autoloads.el ends here
