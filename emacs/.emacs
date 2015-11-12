
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))

;;Package Management
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))
(require 'auto-package-update)


;;Mess with color-themes changing
(defun on-frame-open (frame)
  (if (not (display-graphic-p frame))
      (set-face-background 'default "unspecified-bg" frame)))
(on-frame-open (selected-frame))
(add-hook 'after-make-frame-functions 'on-frame-open)
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)



;; stop using the arrow keys
(global-unset-key [left])
(global-unset-key [up])
(global-unset-key [right])
(global-unset-key [down])


;;SSH tweaks
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

(add-to-list 'auto-mode-alist '(".ssh/config\\'"       . ssh-config-mode))
(add-to-list 'auto-mode-alist '("sshd?_config\\'"      . ssh-config-mode))
(add-to-list 'auto-mode-alist '("known_hosts\\'"       . ssh-known-hosts-mode))
(add-to-list 'auto-mode-alist '("authorized_keys2?\\'" . ssh-authorized-keys-mode))
(add-hook 'ssh-config-mode-hook 'turn-on-font-lock)


(require 'on-screen)
(on-screen-global-mode +1)


(require 'multi-term)
(setq multi-term-program "/usr/bin/zsh")

;;General Beauty and Modes
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(beacon-mode 1)

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

(autoload 'apache-mode "apache-mode" nil t) (add-to-list 'auto-mode-alist '("\\.htaccess\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("httpd\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("srm\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode)) (add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

(define-key global-map [select] 'end-of-line)

(add-to-list 'auto-mode-alist '("\\.cron\\(tab\\)?\\'" . crontab-mode))
(add-to-list 'auto-mode-alist '("cron\\(tab\\)?\\."    . crontab-mode))

(require 'ignoramus)
(ignoramus-setup)

(require 'java-file-create)


;;Beautify LISP
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'rainbow-blocks)
(add-hook 'lisp-mode-hook 'rainbow-blocks-mode)

(require 'adjust-parens)
(add-hook 'emacs-lisp-mode-hook #'adjust-parens-mode)

(require 'indent-guide)
