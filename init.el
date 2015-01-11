;; emacs-init.el --- Initialises emacs for Jen
;;; Commentary:
;; This is the minimal config needed to get org-mode from melpa and
;; get it up and running so that we can load our emacs config from a
;; .org file in a literate manner. The basis for this can be found
;; here:
;;
;; http://orgmode.org/worg/org-contrib/babel/intro.html
;;; Code:

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))


;; This means we prefer things from ~/.emacs.d/elpa over the standard packages.
(package-initialize)

;; This bootstraps us if we don't have anything
(when (not package-archive-contents)
  (package-refresh-contents))


(defun maybe-install-and-require (p)
  "Install elpa package P if we haven't done that yet."
  (when (not (package-installed-p p))
    (package-install p))
  (require p))

(maybe-install-and-require 'org)

(org-babel-load-file (concat (getenv "HOME") "/.emacs.d/org/config.org"))

(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
