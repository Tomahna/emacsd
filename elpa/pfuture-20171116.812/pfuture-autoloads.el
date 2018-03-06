;;; pfuture-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "pfuture" "../../../../../../.emacs.d/elpa/pfuture-20171116.812/pfuture.el"
;;;;;;  "d86985b55e7237984631d32d94dc10e9")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/pfuture-20171116.812/pfuture.el

(autoload 'pfuture-new "pfuture" "\
Create a new future process for command CMD and arguments CMD-ARGS.
This will return a process object with one additional 'result property which
can be read via (process-get process 'result) or alternatively with
\(pfuture-result process).

Note that CMD-ARGS must be a *sequence* of strings, such that
this is wrong: (pfuture-new \"git status\")
this is right: (pfuture-new \"git\" \"status\")

\(fn CMD &rest CMD-ARGS)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/pfuture-20171116.812/pfuture-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/pfuture-20171116.812/pfuture.el")
;;;;;;  (23198 50050 778410 364000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pfuture-autoloads.el ends here
