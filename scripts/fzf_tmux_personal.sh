#!/bin/bash

selected_dir=$(find ~/personal/ -type d -maxdepth 1 | fzf)

if [ -n "$selected_dir" ]; then
  cd "$selected_dir" || exit
  ls
  
  session_name=$(basename "$selected_dir")
  if ! tmux has-session -t "$session_name" 2>/dev/null; then
    tmux new-session -s "$session_name"
  else
    tmux attach-session -t "$session_name"
  fi
fi
