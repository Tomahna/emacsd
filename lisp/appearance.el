;;;;;;;;;;;;;;;;;;;;;;;; Appearance Settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Remove Emacs Toolbar and Menubar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Developper Font
(set-default-font "DejaVu Sans Mono-11")

;; Doom Theme
(use-package doom-themes)
(require 'doom-themes)
(setq doom-themes-enable-bold t         ;; if nil, bold is universally disabled
    doom-themes-enable-italic t)        ;; if nil, italics is universally disabled
(load-theme 'doom-one t)        
(unless (file-directory-p "~/.local/share/fonts") (all-the-icons-install-fonts)) ;; Install icon fonts if not present
(doom-themes-neotree-config)                                                     ;; all-the-icons fonts must be installed!
;(doom-themes-visual-bell-config)                                                ;; Enable flashing mode-line on errors
;(doom-themes-org-config)                                                        ;; Corrects (and improves) org-mode's native fontification.


;; Solaire Mode (Highlight current buffer)
(use-package solaire-mode)
(require 'solaire-mode)

(add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode) ;; brighten buffers (that represent real files)
(add-hook 'ediff-prepare-buffer-hook #'solaire-mode)            ;; To enable solaire-mode unconditionally for certain modes:
(add-hook 'after-revert-hook #'turn-on-solaire-mode)            ;; ...if you use auto-revert-mode:
(add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)  ;; highlight the minibuffer when it is activated:
(solaire-mode-swap-bg)                                          ;; NOTE: This is necessary for themes in the doom-themes package!

;; HLinum (Highlight line number)
(use-package hlinum)
(require 'hlinum)
(setq linum-format "%d ")
(hlinum-activate)
(global-linum-mode 1)

;; Powerline
(use-package powerline)
(require 'powerline)
(powerline-center-evil-theme)

(use-package airline-themes)
(require 'airline-themes)
(load-theme 'airline-doom-one)
(setq powerline-utf-8-separator-left        #xe0b0
      powerline-utf-8-separator-right       #xe0b2
      airline-display-directory             'airline-directory-disabled
      airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)


(use-package highlight-indent-guides)
(setq highlight-indent-guides-method 'character)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'yaml-mode-hook 'highlight-indent-guides-mode)

(neotree-show)
