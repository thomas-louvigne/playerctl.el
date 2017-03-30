
(defgroup playerctl.el nil
  "Control your music from emacs with playerctl."
  :group 'multimedia)


(defun play-pause-music()
  "Play or pause the music"
  (interactive)
  (start-process-shell-command "playerctl.el" "play" "playerctl" "play-pause")
  (message "Play or pause the music"))


(defun stop-music()
  "Stop the music"
  (interactive)
  (start-process-shell-command "playerctl.el" "stop" "playerctl" "stop")
  (message "Stop the music"))
