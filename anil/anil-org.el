(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/org")
;; http://orgmode.org/manual/Setting-up-capture.html
(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-agenda-files (list (concat org-directory "/notes.org")
                             (concat org-directory "/inbox.org")
                             (concat org-directory "/todo.org")

))


;; http://orgmode.org/manual/Closing-items.html
(setq org-log-done 'time)
(setq org-log-done 'note)


(setq org-feed-alist
      '(("Slashdot"
         "http://rss.slashdot.org/Slashdot/slashdot"
         "~/org/feeds.org" "Slashdot Entries")))


(defun anil/org-narrow-forward ()
  "Move to the next subtree at same level, and narrow to it."
  (interactive)
  (widen)
  (org-forward-heading-same-level 1)
  (org-narrow-to-subtree))


(defun anil/org-narrow-backward ()
  "Move to the next subtree at same level, and narrow to it."
  (interactive)
  (widen)
  (org-backward-heading-same-level 1)
  (org-narrow-to-subtree))
;;
(setq org-startup-indented t)
(setq org-startup-folded "showall")

(setq org-startup-with-inline-images t)

;; Org mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;; Treemacs fix
(with-eval-after-load 'org
    (defun org-switch-to-buffer-other-window (&rest args)
      "Same as the original, but lacking the wrapping call to `org-no-popups'"
      (apply 'switch-to-buffer-other-window args)))
