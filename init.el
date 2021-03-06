;;; init.el First thing to get loaded when Emacs starts.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;; Code:

(defvar *emacs-load-start* (current-time))

;; Set paths
(add-to-list 'load-path (expand-file-name "~/.config/emacs/anil") t)
(add-to-list 'load-path (expand-file-name "~/.config/emacs/vendor"))
(setq custom-file "~/.config/emacs/anil/custom.el")
(load custom-file)

;; load packages.el
(load "packages")

(load "path")
(load "anil-font")
(load "anil-ruby")
(load "anil-dash")
(load "anil-helm")
(load "anil-flycheck")
(load "anil-js")
(load "anil-elm")
(load "anil-company")
(load "anil-markdown")
(load "anil-recentf")
(load "anil-magit")
(load "anil-treemacs")
(load "anil-uniquify")
(load "anil-web")
(load "anil-yaml")
(load "anil-yasnippet")
(load "anil-ispell")
(load "anil-org")
(load "anil-elixir")
(load "anil-ido")
(load "defuns")
(load "modes")
(load "hydras")
(load "anil-projectile")
(load "preferences")
(load "key-bindings")
(add-hook 'after-init-hook 'org-agenda-list)

(server-start)


(provide 'init)
;;; init.el ends here
