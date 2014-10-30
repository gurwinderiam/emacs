;;; package --- Summary
;;; package.el
;;; Commentary:


(require 'package)

;;; Code:
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; Auto-download archive if missing
(when (not package-archive-contents) (package-refresh-contents))

;; Auto-download missing packages
(defvar my-packages '(
                      exec-path-from-shell
                      ruby-compilation
                      chruby
                      magit
                      git-gutter
                      multiple-cursors
                      markdown-mode
                      org
                      ruby-electric
                      scpaste
                      smex
                      dash
                      textmate
                      lua-mode
                      gist
                      idle-highlight-mode
                      yaml-mode
                      coffee-mode
                      cider
                      clojure-mode
                      paredit
                      popup
                      ace-jump-mode
                      projectile
                      ensime
                      scala-mode2
                      sbt-mode
                      grizzl
                      emmet-mode
                      web-mode
                      spacegray-theme
                      guru-mode
                      company
                      company-cider
                      ace-jump-mode
                      flycheck
                      multiple-cursors
                      expand-region
                      goto-chg
                      sublimity
                      move-text
                      smartparens
                      discover-my-major
                      js2-mode
                      ack-and-a-half
                      rainbow-mode
                      )
  "A list of packages to ensure are installed at launch.")
(dolist (p my-packages) (when (not (package-installed-p p)) (package-install p)))

(provide 'packages)
;;; packages.el ends here