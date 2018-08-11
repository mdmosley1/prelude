;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; basic emacs configuration to be used in conjunction with prelude       ;;
;; pragmaticemacs.com/installing-and-setting-up-emacs/                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Add MELPA repository for packages
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; prelude options                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; install additional packages - add anyto this list that you want to
;; be installed automatically
(prelude-require-packages '(multiple-cursors
                            ess
                            py-autopep8
                            elpy
                            yasnippet
                            yasnippet-snippets))

(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(yas-global-mode 1) ;; enable snippets everywhere

(elpy-enable)

;;enable arrow keys
(setq prelude-guru nil)

;;smooth scrolling
(setq prelude-use-smooth-scrolling t)

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
(add-hook 'c-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

(add-hook 'c++-mode-hook (lambda () (setq flycheck-checker 'c/c++-gcc)))
(add-hook 'c-mode-hook (lambda () (setq flycheck-checker 'c/c++-gcc)))


;;uncomment this to use default theme
;;(disable-theme 'zenburn)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; display options                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;enable tool and menu bars - good for beginners
(tool-bar-mode 0)
(menu-bar-mode 1)

;; switch meta and super keys so that Command is meta
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; make default font Monaco size 14

(if (equal system-type 'darwin)
    (set-frame-font "Monaco 14" nil t)
  (set-frame-font "Monospace Bold 13" nil t))

;; setting for highlighting ros launch files: http://wiki.ros.org/roslaunch/Tutorials/Using%20Roslaunch%20with%20Emacs
(add-to-list 'auto-mode-alist '("\\.launch$" . nxml-mode))
;; enable C-c C-c for commenting in ros launch files
(add-hook 'nxml-mode-hook
          (lambda () (local-set-key (kbd "C-c C-c") #'comment-region)))
