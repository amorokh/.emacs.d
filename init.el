;- Packages ----------

(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(defvar my-packages
  '(
    ;; Environment
    exec-path-from-shell
    
    ;; Clojure
    cider
    
    ;; List editing
    rainbow-delimiters
    paredit
    ))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;- Environment ----

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (setq mac-right-option-modifier nil))				   

(setq initial-frame-alist '((top . 0) (left . 0) (width . 180) (height . 60)))

;- Themes ---------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;- Misc -----------

(tool-bar-mode -1)

;- Custom ---------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (cider rainbow-delimiters paredit))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
