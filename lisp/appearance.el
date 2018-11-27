;;;;;;;;;;;;;;;;;;;;;;;; Appearance Settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Doom Theme
(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t)         ;; if nil, bold is universally disabled
  (setq doom-themes-enable-italic t)       ;; if nil, italics is universally disabled
  :config
  (unless (file-directory-p "~/.local/share/fonts") (all-the-icons-install-fonts))) ;; Install icon fonts if not present

;; Solaire Mode (Highlight current buffer)
(use-package solaire-mode
  :hook ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
  :config
  (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)
  (solaire-mode-swap-bg))

;; Powerline
(use-package powerline
  :init
  (setq powerline-display-buffer-size nil)
  (setq powerline-display-mule-info nil))

(use-package airline-themes
  :init
  (setq powerline-utf-8-separator-left        #xe0b0)
  (setq powerline-utf-8-separator-right       #xe0b2)
  (setq airline-display-directory             'airline-display-directory-disabled)
  (setq airline-utf-glyph-separator-left      #xe0b0)
  (setq airline-utf-glyph-separator-right     #xe0b2)
  (setq airline-utf-glyph-subseparator-left   #xe0b1)
  (setq airline-utf-glyph-subseparator-right  #xe0b3)
  (setq airline-utf-glyph-branch              #xe0a0)
  (setq airline-utf-glyph-readonly            #xe0a2)
  (setq airline-utf-glyph-linenumber          #xe0a1))

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

(use-package origami)

(menu-bar-mode   0)                     ;;Disable Menubar
(scroll-bar-mode 0)                     ;;Disable Scrollbar
(tool-bar-mode   0)                     ;;Disable Toolbar
(add-to-list 'default-frame-alist '(font . "PragmataPro Mono Liga-10"))
(load-theme 'doom-one t)
(load-theme 'airline-doom-one t)
