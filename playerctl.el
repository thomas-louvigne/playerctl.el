;;; Playerctl.el --- Use your music player (Spotify...) with playerctl
;;
;; Author: Thomas Luquet <thomas@luquet.net>
;; Keywords: multimedia, playerctl, music
;; Version: 0.1
;;
;;; Commentary:
;; Play with Spotify, vlc, audacious, bmp, xmms2, and others music from Emacs with playerctl
;;
;; /!\ You need to have playerctl installed : https://github.com/acrisci/playerctl
;;
;; Use:
;; (require 'playerctl)
;; (define-key global-map (kbd "C-c C-SPC") 'play-pause-song)
;; (define-key global-map (kbd "C-c C-n") 'next-song)
;; More info on https://github.com/thomasluquet/playerctl.el
;;
;;; Code:

(defgroup playerctl.el nil
  "Control your music from emacs with playerctl."
  :group 'multimedia)

(defun playerctl-play-pause-song()
  "Play or pause the song"
  (interactive)
  (start-process-shell-command "playerctl.el" "playOrPause" "playerctl" "play-pause")
  (message "Play or pause the current song"))

(defun playerctl-next-song()
  "Change the song by the next one"
  (interactive)
  (start-process-shell-command "playerctl.el" "next" "playerctl" "next")
  (message "Next song"))

(defun playerctl-previous-song()
  "Change the song by the last one"
  (interactive)
  (start-process-shell-command "playerctl.el" "previous" "playerctl" "previous")
  (message "Previous song"))

(defun playerctl-stop-song()
  "Stop song"
  (interactive)
  (start-process-shell-command "playerctl.el" "stop" "playerctl" "stop")
  (message "Stop music"))

(provide 'playerctl)
;;; playerctl.el ends here
