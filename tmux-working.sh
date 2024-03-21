#!/bin/bash

session="working"

tmux new-session -d -s $session

tmux rename-window -t $session:0 'frontend'

tmux send-keys -t $session:0 'cd ~/working/my-seat-reservation-ui' C-m 'clear' C-m 

tmux new-window -t $session:1 -n 'backend'

tmux send-keys -t $session:1 'cd ~/working/my-seat-reservation-services' C-m 'clear' C-m 

tmux new-window -t $session:3 -n 'monitor'

tmux send-keys -t $session:3 'tmux split-window -h && htop' C-m  

tmux attach-session -t $session
