(add-hook 'js2-mode-hook
  '(lambda ()
    (add-hook 'before-save-hook
       (lambda ()
         (untabify (point-min) (point-max))))))

(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))

(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override t)

(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
(setq javascript-indent-level 2)
