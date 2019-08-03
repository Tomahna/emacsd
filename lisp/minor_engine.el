(use-package engine-mode)

(require 'evil)
(require 'engine-mode)

(defengine duckduckgo "https://duckduckgo.com/?q=%s")
(defengine cats "https://github.com/typelevel/cats/search?q=%s")

(evil-ex-define-cmd "cats" 'engine/search-cats)
(evil-ex-define-cmd "ddg" 'engine/search-duckduckgo)
