;;; package --- Summary
;;; Simple package to play music from emacs with playerctl
;;; Commentary:
;;; You need to have playerctl installed
;;; More info on https://github.com/thomasluquet/playerctl.el
;;; Code:
(defgroup playerctl.el nil
  "Control your music from emacs with playerctl."
  :group 'multimedia)


(defun play-pause-music()
  "Play or pause the music"
  (interactive)
  (start-process-shell-command "playerctl.el" "playOrPause" "playerctl" "play-pause")
  (message "Play or pause the music"))

(defun next-song()
  "Change the song by the next one "
  (interactive)
  (start-process-shell-command "playerctl.el" "next" "playerctl" "next")
  (message "Next song"))

(defun previous-song()
  "Change the song by the last one "
  (interactive)
  (start-process-shell-command "playerctl.el" "previous" "playerctl" "previous")
  (message "previous song"))


(defun stop-music()
  "Stop music"
  (interactive)
  (start-process-shell-command "playerctl.el" "stop" "playerctl" "stop")
  (message "Stop music"))

;;; playerctl.el ends here
