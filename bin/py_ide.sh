#!/bin/sh
SESSION=py_ide

tmux has-session -t $SESSION
if [ $? -eq 0 ]; then
    echo "Session exists. Attaching."
    sleep 1
    tmux attach -t $SESSION
    exit 0;
fi

tmux new-session -d -n "shell" -s $SESSION
tmux new-window -t $SESSION:2 -n "vim"
tmux new-window -t $SESSION:3 -n "ipython"
tmux new-window -t $SESSION:4 -n "ssh"
tmux select-pane -t $SESSION:4 -P 'fg=green,bg=black'
tmux attach -t $SESSION:1
