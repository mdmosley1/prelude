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
                            elpy))

(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(elpy-enable)

;;enable arrow keys
(setq prelude-guru nil)

;;smooth scrolling
(setq prelude-use-smooth-scrolling t)

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
(set-frame-font "Monaco 14" nil t)
