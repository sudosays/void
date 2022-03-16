;;; void.el --- An obliviate writing mode for Emacs  -*- lexical-binding: t; -*-
;;
;; "Enter the void. Empty and become nothing"

;;; Commentary:

;;; Code:

(require 'focus)
(require 'writeroom-mode)

(defvar void-theme
  'doom-plain-dark
  "This is the theme file for Doom users that activates when void starts.")

(defvar void-width
  60
  "This is used to adjust the writeroom width.")

(defun enter-void ()
  "Set up the void-mode by activating the tools."
  (load-theme void-theme)
  (display-line-numbers-mode -1)
  (writeroom-mode)
  (focus-mode 1))

(defun exit-void ()
  "Disable all the void-mode tools and restore to previous modes."
  (disable-theme void-theme)
  (writeroom-mode 0)
  (focus-mode 0)
  (display-line-numbers-mode))

(define-minor-mode void-mode
  "A mode for complete distraction-free writing."
  :init-value nil
  (if void-mode (enter-void) (exit-void)))

(provide 'void)
;;; void.el ends here
