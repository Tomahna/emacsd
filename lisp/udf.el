;;;;;;;;;;;;;;;;;;;;;  User Defined Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Invoke guake instead of emacs term
(defun term ()
  "Call guake in current directory"
  (interactive)
  (call-process "guake" nil 0 nil "-n" default-directory "--show"))

;; Restart emacs
(defun launch-separate-emacs-in-terminal ()
  (suspend-emacs "fg ; emacs -nw"))

(defun launch-separate-emacs-under-x ()
  (call-process "sh" nil nil nil "-c" "emacs &"))

(defun restart ()
  (interactive)
  ;; We need the new emacs to be spawned after all kill-emacs-hooks
  ;; have been processed and there is nothing interesting left
  (let ((kill-emacs-hook (append kill-emacs-hook (list (if (display-graphic-p)
                                                           #'launch-separate-emacs-under-x
                                                         #'launch-separate-emacs-in-terminal)))))
    (save-buffers-kill-emacs)))
