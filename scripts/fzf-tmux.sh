#!/bin/bash

selected_dir=$(find . -type d | fzf)

if [ -n "$selected_dir" ]; then
  cd "$selected_dir" || exit
  
  session_name=$(basename "$selected_dir")
  if ! tmux has-session -t "$session_name" 2>/dev/null; then
    tmux new-session -s "$session_name"
  else
    # If the session exists, attach to it
    tmux attach-session -t "$session_name"
  fi
fi

