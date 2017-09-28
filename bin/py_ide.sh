#!/bin/sh
SESSION=py_ide

tmux has-session -t $SESSION
if [ $? -eq 0 ]; then
    echo "Session exists. Attaching."
    sleep 1
    tmux attach -t $SESSION
    exit 0;
fi

tmux new-session -d -n "vim" -s $SESSION
tmux new-window -t $SESSION:2 -n "ipython"
tmux new-window -t $SESSION:3 -n "shell"
tmux new-window -t $SESSION:4 -n "ssh"
tmux new-window -t $SESSION:5 -n "wiki"
tmux new-window -t $SESSION:6 -n "bc"
tmux new-window -t $SESSION:7 -n "home"
tmux select-pane -t $SESSION:4 -P 'fg=colour76'
tmux attach -t $SESSION:1
