(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))

(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

(add-hook 'local-write-file-hooks
            (lambda ()
               (delete-trailing-whitespace)
               nil))

(put 'downcase-region 'disabled nil)

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

(autoload 'apache-mode "apache-mode" nil t) (add-to-list 'auto-mode-alist '("\\.htaccess\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("httpd\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("srm\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

(define-key global-map [select] 'end-of-line)

;; stop using the arrow keys
(global-unset-key [left])
(global-unset-key [up])
(global-unset-key [right])
(global-unset-key [down])

(require 'tramp)
(setq tramp-default-method "ssh")
;;(add-to-list 'tramp-default-method-alist '("" "dohagan" "ssh"))
(add-to-list 'tramp-default-method-alist
             '("\\`localhost\\'" "\\`david\\'" "sudo"))
;;(setq tramp-backup-directory-alist backup-directory-alis)t
;;(setq backup-enable-predicate
 ;;     (lambda (name)
 ;;       (and (normal-backup-enable-predicate name)
   ;;          (not
     ;;         (let ((method (file-remote-p name 'method)))
       ;;         (when (stringp method)
         ;;         (member method '("su" "sudo"))))))))

(require 'on-screen)
(on-screen-global-mode +1)


(require 'multi-term)
(setq multi-term-program "/usr/bin/zsh")
