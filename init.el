;;; Load the MELPA Emacs package source
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(cider clojure-mode paredit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)
(package-refresh-contents)
(package-install-selected-packages)

(require 'clojure-mode)
(require 'cider)
(require 'paredit)

(define-key clojure-mode-map (kbd "C-c ,")   'cider-test-run-loaded-tests)
(define-key clojure-mode-map (kbd "C-c M-,") 'cider-test-run-test)

(setq cider-clojure-cli-global-options "-Anrepl:dev")

(add-hook 'clojure-mode-hook 'paredit-mode)
