(use-package engine-mode)

(require 'evil)
(require 'engine-mode)

(defengine duckduckgo "https://duckduckgo.com/?q=%s")

(evil-ex-define-cmd "ddg" 'engine/search-duckduckgo)
