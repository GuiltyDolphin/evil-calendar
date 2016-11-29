;;; evil-calendar.el --- Evil calendar integration.

;; Copyright (C) 2016 Ben Moon
;; Author: Ben Moon <software@guiltydolphin.com>
;; URL: https://github.com/guiltydolphin/evil-calendar
;; Git-Repository: git://github.com/guiltydolphin/evil-calendar.git
;; Created: 2016-11-29
;; Version: 0.1.0
;; Keywords: calendar, convenience, evil
;; Package-Requires: ((dash "2.13.0") (evil "0"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; evil-calendar provides integration between Evil and Emacs'
;; calendar mode.
;;
;; Integration includes keybindings, which aim to be as
;; conceptually close to Evil's existing bindings as possible,
;; whilst retaining convenience.
;;
;; For more information see the README.

;;; Code:

(require 'dash)
(require 'evil)

(define-minor-mode evil-calendar-mode
  "Minor-mode for evil calendar integration.

Active when in Emacs' `calendar-mode'."
  :keymap (make-sparse-keymap))

(add-hook 'calendar-mode-hook 'evil-calendar-mode)

(provide 'evil-calendar)
;;; evil-calendar.el ends here
