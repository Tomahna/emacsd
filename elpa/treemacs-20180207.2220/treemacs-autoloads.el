;;; treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "treemacs" "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs.el"
;;;;;;  "d0dec413c711fa5402a7a4e77ad03f25")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs.el

(autoload 'treemacs-toggle "treemacs" "\
If a treemacs buffer exists and is visible hide it.
If a treemacs buffer exists, but is not visible bring it to the foreground
and select it.
If no treemacs buffer exists call `treemacs'.

\(fn)" t nil)

(autoload 'treemacs "treemacs" "\
Open treemacs with current buffer's directory as root.
If the current buffer's `default-directory' is nil, use $HOME as fallback.
If a prefix argument ARG is given manually select the root directory.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-bookmark "treemacs" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location. If it cannot
do that it will instead rebuild its view with the bookmark's location as
its root.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-refresh "treemacs" "\
Refresh and rebuild treemacs buffer.

\(fn)" t nil)

(autoload 'treemacs-find-file "treemacs" "\
Find and focus the current file in the treemacs window.
Most likley to be useful when `treemacs-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root. If no treemacs buffer exists it will be created with the current file's
containing directory as root. Will do nothing if the current buffer is not
visiting a file.

\(fn)" t nil)

(autoload 'treemacs-find-tag "treemacs" "\
Find and move point to the tag at point in the treemacs view.
Most likley to be useful when `treemacs-tag-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root. If no treemacs buffer exists it will be created with the current file's
containing directory as root. Will do nothing if the current buffer is not
visiting a file or Emacs cannot find any tags for the current file.

\(fn)" t nil)

(autoload 'treemacs-select-window "treemacs" "\
Select the treemacs window if it is visible.
Call `treemacs-toggle' if it is not.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "treemacs-mode" "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mode.el"
;;;;;;  "4666a58e7f82025e3340baae2b9aa76c")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mode.el

(autoload 'treemacs-mode "treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "treemacs-mouse-interface" "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mouse-interface.el"
;;;;;;  "565cc465e6b534888c70a9de346f2a28")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mouse-interface.el

(autoload 'treemacs-node-buffer-and-position "treemacs-mouse-interface" "\
Return source buffer or list of buffer and position for the current node.
This information can be used for future display. Stay in the selected window and
ignore any prefix argument.

\(fn &optional _)" t nil)

;;;***

;;;### (autoloads nil "treemacs-persist" "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-persist.el"
;;;;;;  "93bb301001dd313a292c93fb618102fa")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-persist.el

(autoload 'treemacs--restore "treemacs-persist" "\
Restore the entire treemacs state saved by `treeemacs--persist'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-async.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-branch-creation.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-compatibility.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-customization.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-faces.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-filewatch-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-follow-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-impl.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-interface.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-macros.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-mouse-interface.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-persist.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-structure.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-tag-follow-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-tags.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs-visuals.el"
;;;;;;  "../../../../../../.emacs.d/elpa/treemacs-20180207.2220/treemacs.el")
;;;;;;  (23168 1915 729866 929000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; treemacs-autoloads.el ends here
