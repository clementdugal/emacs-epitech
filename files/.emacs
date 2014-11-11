;;
;; .emacs for emacs_config in /home/dugal_c/
;; 
;; Made by Clement DUGAL
;; Login   <dugal_c@epitech.net>
;; 
;; Started on  Thu Mar 13 17:37:11 2014 Clement DUGAL
;; Last update Tue Nov 11 15:12:23 2014 Clement DUGAL
;;

(eval-after-load "warnings"
  ;; shut up, emacs!
  '(setq display-warning-minimum-level :error))

(load "std.el")
(load "std_comment.el")

(global-linum-mode 1)
;;(setq-default show-trailing-whitespace t)
(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(setq linum-format "%4d \u2502 ")
;;(add-hook 'c-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-yellow)))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 5   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)
