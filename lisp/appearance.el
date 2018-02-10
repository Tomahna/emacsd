;;;;;;;;;;;;;;;;;;;;;;;; Appearance Settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Remove Emacs Toolbar and Menubar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Developper Font
(set-frame-font "DejaVu Sans Mono-11")

;; Doom Theme
(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t)         ;; if nil, bold is universally disabled
  (setq doom-themes-enable-italic t)       ;; if nil, italics is universally disabled
  :config
  (load-theme 'doom-one t)
  (unless (file-directory-p "~/.local/share/fonts") (all-the-icons-install-fonts))) ;; Install icon fonts if not present

;; Solaire Mode (Highlight current buffer)
(use-package solaire-mode
  :config
  (add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode) ;; brighten buffers (that represent real files)
  (add-hook 'ediff-prepare-buffer-hook #'solaire-mode)            ;; To enable solaire-mode unconditionally for certain modes:
  (add-hook 'after-revert-hook #'turn-on-solaire-mode)            ;; ...if you use auto-revert-mode:
  (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)  ;; highlight the minibuffer when it is activated:
  (solaire-mode-swap-bg))                                          ;; NOTE: This is necessary for themes in the doom-themes package!

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
  (setq airline-utf-glyph-linenumber          #xe0a1)
  :config
  (load-theme 'airline-doom-one))

(use-package highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'character)
  :config
  (add-hook 'yaml-mode-hook 'highlight-indent-guides-mode))
