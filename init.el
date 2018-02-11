;; the package manager
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(add-to-list 'load-path "~/.emacs.d/lisp")

(load "global")
(load "appearance")

;; User defined functions
(load "udf")

;; Language Settings
(load "markdown")
(load "nix")
(load "lang_elisp.el")
(load "lang_python")
(load "lang_scala")
(load "yaml")

;; Keybindings
(load "keybind")
