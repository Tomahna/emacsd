;;;;;;;;;;;;;;;;;;;;;;;; Appearance Settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(menu-bar-mode   0)                     ;;Disable Menubar
(scroll-bar-mode 0)                     ;;Disable Scrollbar
(tool-bar-mode   0)                     ;;Disable Toolbar
(add-to-list 'default-frame-alist '(font . "PragmataPro Mono Liga-12")) ;;Set Pragmata as font

;; Doom Theme
(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t)         ;; if nil, bold is universally disabled
  (setq doom-themes-enable-italic t)       ;; if nil, italics is universally disabled
  :config
  (unless (file-directory-p "~/.local/share/fonts") (all-the-icons-install-fonts))) ;; Install icon fonts if not present
(load-theme 'doom-one t)

;; Solaire Mode (Highlight current buffer)
(use-package solaire-mode
  :hook
  ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
  (minibuffer-setup . solaire-mode-in-minibuffer)
  :config
  (solaire-global-mode +1)
  (solaire-mode-swap-bg))

(use-package doom-modeline
  :config
  (setq column-number-mode t)
  (setq doom-modeline-buffer-file-name-style 'relative-from-project)
  (setq doom-modeline-icon t)
  (setq doom-modeline-major-mode-icon t)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-persp-name t)
  (setq doom-modeline-enable-word-count t))
(fset 'battery-update #'ignore) ;; Temporary fix https://github.com/seagle0128/doom-modeline/issues/274
(doom-modeline-mode)

(use-package highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'character)
  :config
  (add-hook 'yaml-mode-hook 'highlight-indent-guides-mode))

;; Add directory tree
(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-projectile)
(setq treemacs-collapse-dirs              10)
(setq treemacs-follow-after-init          t)
(setq treemacs-is-never-other-window      t) ;;todo
(setq treemacs-recenter-after-file-follow t)
(setq treemacs-recenter-after-tag-follow  t)
(setq treemacs-show-hidden-files          nil)
(setq treemacs-silent-filewatch           t)
(setq treemacs-silent-refresh             t)
(setq treemacs-sorting                    'alphabetic-desc)
(setq treemacs-tag-follow-cleanup         t)
(setq treemacs-tag-follow-delay           1.5)
(setq treemacs-width                      30)
(treemacs-follow-mode t)
(treemacs-filewatch-mode t)
(if (not (null (executable-find "python3"))) (treemacs-git-mode 'extended) (treemacs-git-mode 'simple))
