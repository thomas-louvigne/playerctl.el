;;; Playerctl.el --- Use your music player (Spotify...) with playerctl
;;
;; Author: Thomas Luquet <thomas@luquet.net>
;; Keywords: multimedia, playerctl, music
;; URL: https://github.com/thomasluquet/playerctl.el
;; Version: 0.0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;
;;; Commentary:
;; Play music with Spotify, vlc, audacious, bmp, xmms2, and others music player from Emacs with playerctl
;;
;;; Dependencies:
;; You need to have playerctl installed : <https://github.com/acrisci/playerctl>
;;
;;; Customization:
;; (require 'playerctl)
;; (define-key global-map (kbd "C-c C-SPC") 'playerctl-play-pause-song)
;; (define-key global-map (kbd "C-c C-n") 'playerctl-next-song)
;;
;;; Code:

(defgroup playerctl.el nil
  "Control your music from emacs with playerctl."
  :group 'multimedia)

(defun playerctl-play-pause-song()
  "Play or pause the song"
  (interactive)
  (start-process "playerctl.el" nil "playerctl" "play-pause")
  (message "Play or pause the current song"))

(defun playerctl-next-song()
  "Change the song by the next one"
  (interactive)
  (start-process "playerctl.el" nil "playerctl" "next")
  (message "Next song"))

(defun playerctl-previous-song()
  "Change the song by the last one"
  (interactive)
  (start-process "playerctl.el" nil "playerctl" "previous")
  (message "Previous song"))

(defun playerctl-stop-song()
  "Stop song"
  (interactive)
  (start-process "playerctl.el" nil "playerctl" "stop")
  (message "Stop music"))

;;;###autoload
(define-minor-mode playerctl-mode "playerctl"
  "Mode for playing your music with playerctl."
  :global t
  )

(provide 'playerctl)
;;; playerctl.el ends here
