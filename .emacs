;; -*- Mode: Emacs-Lisp -*-

;; Time-stamp: <2016-02-29 16:09:34 thomas>

;; Charset ISO Latin-1 8 bits
(require 'iso-insert)
(set-language-environment 'latin-1)
(set-input-mode (car (current-input-mode)) (nth 1 (current-input-mode)) 0)
(custom-set-faces)

;; Display line number
(setq line-number-mode t)

;; Display column number
(setq column-number-mode t)

;; Text decoration
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Some colors
(set-face-foreground 'highlight "yellow")
(set-face-foreground 'modeline 	"red")
(set-face-background 'modeline  "lightblue")

;; Highlighting
(transient-mark-mode t)

;; Show opening/closing parenthesis
(custom-set-variables
 '(load-home-init-file t t))

;; Mode C: tab size
(add-hook 'c-mode-hook
    (function (lambda ()
	(setq c-basic-offset 4))))
(add-hook 'c-mode-common-hook
    (function (lambda ()
	(setq tab-width 4))))

;; No limit to buffer size
(setq buffers-menu-max-size nil)

;; Scroll lines one by one
(setq-default scroll-conservatively 5)
(setq scroll-step 1)

;; yes/no -> y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable compressed files support
(auto-compression-mode 1)

;; Blink instead of beep
(setq visible-bell t)

;; Use European date format and start week on Monday
(setq european-calendar-style t)
(setq calendar--week--start--day 1)

;; F3 = insert date
(defun insert-date ()
  (interactive)
  (insert (format-time-string "%3a %3b %2d %02H:%02M:%02S %Z %Y")))
(global-set-key [f3] 'insert-date)

;; Time stamping
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-active t)

;; Disable backup files (*~)
(setq make-backup-files nil)

;; Do not create new lines when scrolling down to EOF
(setq next-line-add-newlines nil)

;; [Del], [Home] and [End] `standards'
(setq delete-key-deletes-forward t)
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

;; Auto-fill EOL
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default auto-fill-function 'do-auto-fill)

;; Disable GNU splash screen
(setq inhibit-startup-message t)

;; Set title to buffer name
(setq frame-title-format "Emacs - %b")

;; Make search case insensitive
(setq case-fold-search t)
