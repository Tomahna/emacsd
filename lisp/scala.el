;; Scala
(use-package ensime
  :init 
  (setq
   ensime-startup-notification nil
   ensime-startup-snapshot-notification nil)
)
(use-package sbt-mode)
(use-package scala-mode)
