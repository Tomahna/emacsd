;;; sbt-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "sbt-mode" "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode.el"
;;;;;;  "bcb2bd1a505fbf54aca099eae8abef58")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode.el

(autoload 'sbt-start "sbt-mode" "\
Start sbt

\(fn)" t nil)

(autoload 'run-scala "sbt-mode" "\
Pop up Scala REPL buffer.

If the sbt buffer is not in REPL mode, it will switch to REPL mode (console).

\(fn)" t nil)

(autoload 'sbt-command "sbt-mode" "\
Send a command to the sbt process of the current buffer's sbt project.
Prompts for the command to send when in interactive mode. You can
use tab completion.

This command does the following:
  - displays the buffer moving focus to it if focus is t
  - erases the buffer
  - forgets about compilation errors

The command is most usefull for running a compilation command
that outputs errors.

\(fn COMMAND &optional FOCUS)" t nil)

(autoload 'sbt-run-previous-command "sbt-mode" "\
Repeat the command that was previously executed (or run the
sbt:default-command, if no other command has yet been run).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sbt-mode-buffer" "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-buffer.el"
;;;;;;  "77933c0ed07eafb743d24d9cfbb23b44")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-buffer.el

(autoload 'sbt-switch-to-active-sbt-buffer "sbt-mode-buffer" "\
Switch to buffer with running sbt process.
If run in buffer in scala project then it switch to that project sbt buffer (if some exists).
When run in buffer with no scala project then based on number of sbt buffers this happen:
  no sbt buffer exists - do nothing
  one sbt buffer exists - switch to that buffer
  more than one sbt buffer exist - let user choose which buffer to switch to

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sbt-mode-hydra" "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-hydra.el"
;;;;;;  "c2768514ee77a6903e25878c95aaf841")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-hydra.el

(autoload 'sbt-hydra "sbt-mode-hydra" "\
Show Sbt hydra for current Sbt project. If there is no hydra defined for current
Sbt project it will create one.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sbt-mode-rgrep" "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-rgrep.el"
;;;;;;  "e552950baabb4021a94ba0e7c3a08d60")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-rgrep.el

(autoload 'sbt-grep "sbt-mode-rgrep" "\
Recursively grep for REGEXP in FILES in directory tree rooted at DIR. By default DIR is is the sbt project root.

\(fn REGEXP &optional FILES DIR CONFIRM)" t nil)

(autoload 'sbt-find-usages "sbt-mode-rgrep" "\
Recursively grep for ID in scala files in directory tree rooted at DIR. By default DIR is is the sbt project root.

\(fn ID &optional DIR CONFIRM)" t nil)

(autoload 'sbt-find-definitions "sbt-mode-rgrep" "\
Recursively grep for definition of ID in scala files in the directory tree rooted at the sbt project root.

\(fn ID &optional CONFIRM)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-buffer.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-comint.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-hydra.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-project.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-rgrep.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode-vars.el"
;;;;;;  "../../../../../../.emacs.d/elpa/sbt-mode-20171111.1558/sbt-mode.el")
;;;;;;  (23168 1942 542912 719000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sbt-mode-autoloads.el ends here
