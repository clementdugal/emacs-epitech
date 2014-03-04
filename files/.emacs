(load "std.el")
(load "std_comment.el")
;;(load "tuareg-site-file.el")

(global-linum-mode 1)
;;(setq-default show-trailing-whitespace t)
(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(setq linum-format "%4d \u2502 ")
;;(add-hook 'c-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-yellow)))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )


(add-to-list 'load-path "/home/dugal_c/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/dugal_c/.emacs.d//ac-dict")
(ac-config-default)
