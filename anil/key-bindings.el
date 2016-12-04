(require 'dired)

;; bind to hippie-expand .. default is 'just-one-space'
(global-set-key "\M- " 'hippie-expand)
(global-set-key "\C-xg" 'magit-status)

;; ctags
(global-set-key [s-mouse-1] 'find-tag)
(global-set-key (kbd "s-.") 'find-tag)

;; Dired
; - is `cd ..` (like vim)
(define-key dired-mode-map "-" 'dired-up-directory)
; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)


;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


(global-set-key "\C-xp" 'anil-ido-find-project)

;; Command + Return to go to newline
(global-set-key [s-return] 'textmate-next-line)

(global-set-key [S-escape] 'delete-other-windows)

(global-set-key "\C-o" 'helm-imenu)

(global-set-key (kbd "C-w") 'backward-kill-word)

(global-set-key (kbd "C-c r") 'revert-buffer)

(global-set-key (kbd "C-c g") 'google-search)

(global-set-key "\C-x\C-k" 'kill-region)

(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\C-x\ \C-r" 'anil-recentf-ido-find-file)

;; Ace jump
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)

(global-set-key "\M-o" 'ace-window)
(global-set-key (kbd "s-w") 'ace-window)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)


(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'goto-chg)
(global-set-key [(control ?.)] 'goto-last-change)
(global-set-key [(control ?,)] 'goto-last-change-reverse)


(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)


(define-key global-map [home] 'beginning-of-line)
(define-key global-map [end] 'end-of-line)


(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; neotree toggle
(global-set-key (kbd "s-\\") 'neotree-toggle)

;; helm M-x
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key "\C-xm" 'helm-M-x)

(global-set-key "\C-c\C-m" 'helm-M-x)

;; browse kill ring
(global-set-key "\C-cy" 'browse-kill-ring)


;; String insert rectangle
(global-set-key (kbd "C-x r M-i") 'string-insert-rectangle)

;; Add pound
(when (eq system-type 'darwin)
  (fset 'insert-pound "#")
  (define-key global-map "\M-3" #'insert-pound))

(global-set-key "\C-cP" 'anil-goto-config)

;; Org keybindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(provide 'key-bindings)
;;; key-bindings.el ends here
