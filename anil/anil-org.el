(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/Dropbox/Org files")
;; http://orgmode.org/manual/Setting-up-capture.html
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-agenda-files (list (concat org-directory "/notes.org")
                             (concat org-directory "/inbox.org")))


;; http://orgmode.org/manual/Closing-items.html
(setq org-log-done 'time)
(setq org-log-done 'note)

;; http://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-include-diary t)


(setq org-feed-alist
      '(("Slashdot"
         "http://rss.slashdot.org/Slashdot/slashdot"
         "/feeds.org" "Slashdot Entries")))


(setq org-startup-with-inline-images t)

;; Org mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))