;; Package management setup
(require 'package)
(add-to-list 'package-archives
 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

	(unless (package-installed-p 'use-package)
	 (package-refresh-contents)
	 (package-install 'use-package))

	(eval-when-compile
	 (require 'use-package))

	(setq use-package-always-ensure t)
(setq use-package-compute-statistics t)


	;; Disable Lame Emacs defaults/Enable Better options
(toggle-scroll-bar -1)
	(setq inhibit-splash-screen t
	 inhibit-startup-message t
	 inhibit-startup-echo-area-message t)

	;; Turn on column-numbers in the status bar
(column-number-mode)

	;; Only ask y or n questions
	(fset 'yes-or-no-p 'y-or-n-p)

	(use-package diminish
	 :ensure t)

	(use-package general
	 :diminish
	 :ensure t)

	(use-package evil
	 :ensure t
	 :config
	 (setq evil-magic '(very-magic)))

        (use-package web-mode
	  :ensure t)

        (use-package js2-mode
	  :ensure t)

        (use-package emmet-mode
	  :ensure t)

	 (require 'doom-dracula-theme)
	 ;;(load-theme 'doom-dracula)

	 ;; Make evil-mode up/down operate in screen lines instaed of logical lines
	 (define-key evil-motion-state-map "j" 'evil-next-visual-line)
	 (define-key evil-motion-state-map "k" 'evil-previous-visual-line)
	 ;; Also in visual mode
	 (define-key evil-visual-state-map "j" 'evil-next-visual-line)
	 (define-key evil-visual-state-map "k" 'evil-previous-visual-line)



	 (general-define-key
	  :states 'normal
	  "SPC" nil)

	 (general-create-definer utility-leader-def
	  :states 'normal
	  :prefix "SPC")

	 (utility-leader-def
	  "1" 'delete-other-windows
	  "d" 'kill-this-buffer
	  "o" 'other-window
	  "w" 'save-buffer
	  "C-r" 'restart-emacs
	  "ff" 'find-file
	  "x" 'delete-other-windows
	  "b" 'list-buffers
	  ;;  "R" (lambda () (interactive) (revert-buffer :ignore-auto :noconfirm)))
	 )

	 (use-package evil-escape
	  :diminish
	  :after evil
	  :config
	  (setq-default evil-escape-key-sequence "jk")
	  (setq evil-escape-unordered-key-sequence t)
	  (setq evil-escape-delay 0.2)
	  (evil-escape-mode t))

	(use-package evil-commentary
	 :ensure t
	 :diminish
	 :after evil
	 :config
	 (evil-commentary-mode))

(evil-mode 1)

	
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (js2-mode web-mode racket-mode magit evil-visualstar general use-package restart-emacs evil-collection doom-themes))))
	
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil
		    :family "Hack"
		    :height 110
		    :weight 'normal
		    :width 'normal)
(cd "C:/users/bss233")
(electric-indent-mode 0)
