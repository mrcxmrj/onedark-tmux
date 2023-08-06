show_directory_in_window() {
  if [[ $window_color_fill == "number" ]] 
  then
    local show_icon="#[fg=$thm_bg,bg=$thm_blue]#I"
    local show_middle_separator="#[fg=$thm_blue,bg=$thm_gray,nobold,nounderscore,noitalics]$window_middle_separator"
    local show_text="#[fg=$thm_fg,bg=$thm_gray]#{b:pane_current_path}"
    
    if [[ $window_icon_position == "right" ]]
    then
      local show_left_separator="#[fg=$thm_gray,bg=$thm_bg,nobold,nounderscore,noitalics]$window_left_separator"
      local show_right_separator="#[fg=$thm_blue,bg=$thm_bg]$window_right_separator"

      echo "$show_left_separator$show_text$show_middle_separator$show_icon$show_right_separator"
    else
      local show_left_separator="#[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]$window_left_separator"
      local show_right_separator="#[fg=$thm_gray,bg=$thm_bg]$window_right_separator"

      echo "$show_left_separator$show_icon$show_middle_separator$show_text$show_right_separator"
    fi
    
  else
    local show_left_separator="#[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]$window_left_separator"
    local show_icon="#[fg=$thm_bg,bg=$thm_blue]#I"
    local show_middle_separator="#[fg=$thm_gray,bg=$thm_blue,nobold,nounderscore,noitalics]$window_middle_separator"
    local show_text="#[fg=$thm_bg,bg=$thm_blue]#{b:pane_current_path}"
    local show_right_separator="#[fg=$thm_blue,bg=$thm_bg]$window_right_separator"

    if [[ $window_icon_position == "right" ]]
    then
      echo "$show_left_separator$show_text$show_middle_separator$show_icon$show_right_separator"

    else
      echo "$show_left_separator$show_icon$show_middle_separator$show_text$show_right_separator"
    fi

  fi

}
