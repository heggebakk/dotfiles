;;; base-ui.el --- UI configuration -*- lexical-binding: t -*-

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Configuration of the Emacs interface with external packages.

;;; Code:

;;; Theme
;; You should probably change this, I have a very weird taste in themes.
(use-package apropospriate-theme
  :init (load-theme 'apropospriate-light t))

;; Fix the spacing between the major mode name and all the minor modes.
(catch 'done
  (mapc (lambda (x)
          (when (and (consp x)
                     (equal (cadr x) '("" minor-mode-alist)))
            (setcar (cadr x) " ∷ ")
            (throw 'done t)))
        mode-line-modes))

(provide 'base-ui)
;;; base-ui.el ends here
