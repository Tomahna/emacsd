;;; nix-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "nix-mode" "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-mode.el"
;;;;;;  "f350c75ed7b48877c34def46c900b492")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-mode.el

(autoload 'nix-build "nix-mode" "\
Run nix-build.
ATTR is the attribute to build.
DIR is the directory containing the Nix default.nix expression.

\(fn &optional ATTR DIR)" t nil)

(autoload 'nix-mode "nix-mode" "\
Major mode for editing Nix expressions.

The following commands may be useful:

  '\\[newline-and-indent]'
    Insert a newline and move the cursor to align with the previous
    non-empty line.

  '\\[fill-paragraph]'
    Refill a paragraph so that all lines are at most `fill-column'
    lines long.  This should do the right thing for comments beginning
    with `#'.  However, this command doesn't work properly yet if the
    comment is adjacent to code (i.e., no intervening empty lines).
    In that case, select the text to be refilled and use
    `\\[fill-region]' instead.

The hook `nix-mode-hook' is run when Nix mode is started.

\\{nix-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))

(add-to-list 'auto-mode-alist '("\\.nix.in\\'" . nix-mode))

;;;***

;;;### (autoloads nil "nix-prettify-mode" "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-prettify-mode.el"
;;;;;;  "edffe36f27135157655c70e90f8feee8")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-prettify-mode.el

(autoload 'nix-prettify-mode "nix-prettify-mode" "\
Toggle Nix Prettify mode.

With a prefix argument ARG, enable Nix Prettify mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When Nix Prettify mode is enabled, hash-parts of the Nix store
file names (see `nix-prettify-regexp') are prettified,
i.e. displayed as `nix-prettify-char' character.  This mode can
be enabled programmatically using hooks:

  (add-hook 'shell-mode-hook 'nix-prettify-mode)

It is possible to enable the mode in any buffer, however not any
buffer's highlighting may survive after adding new elements to
`font-lock-keywords' (see `nix-prettify-special-modes' for
details).

Also you can use `global-nix-prettify-mode' to enable Nix
Prettify mode for all modes that support font-locking.

\(fn &optional ARG)" t nil)

(defvar nix-prettify-global-mode nil "\
Non-nil if Nix-Prettify-Global mode is enabled.
See the `nix-prettify-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nix-prettify-global-mode'.")

(custom-autoload 'nix-prettify-global-mode "nix-prettify-mode" nil)

(autoload 'nix-prettify-global-mode "nix-prettify-mode" "\
Toggle Nix-Prettify mode in all buffers.
With prefix ARG, enable Nix-Prettify-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Nix-Prettify mode is enabled in all buffers where
`nix-prettify-turn-on' would do it.
See `nix-prettify-mode' for more information on Nix-Prettify mode.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'global-nix-prettify-mode 'nix-prettify-global-mode)

;;;***

;;;### (autoloads nil "nix-shell" "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-shell.el"
;;;;;;  "9ac84ee4bfe6e31edc3fcbb2e48d66d2")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-shell.el

(autoload 'nix-shell "nix-shell" "\
Run nix-shell in a terminal.

PATH path containing Nix expressions.
ATTRIBUTE attribute name in nixpkgs to use.

\(fn PATH ATTRIBUTE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-format.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-mode-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-mode-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-prettify-mode.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-repl.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-shebang.el"
;;;;;;  "../../../../../../.emacs.d/elpa/nix-mode-20180126.1935/nix-shell.el")
;;;;;;  (23166 51004 546946 640000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; nix-mode-autoloads.el ends here
