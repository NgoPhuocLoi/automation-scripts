#!/bin/bash

session="project"

tmux new-session -d -s $session

tmux rename-window -t $session:0 'frontend'

tmux send-keys -t $session:0 'cd ~/projects/clothing-store/frontend' C-m 'clear && bun dev' C-m 

tmux new-window -t $session:1 -n 'backend'

tmux send-keys -t $session:1 'cd ~/projects/clothing-store/backend' C-m 'clear && bun dev' C-m 

tmux new-window -t $session:2 -n 'admin'

tmux send-keys -t $session:2 'cd ~/projects/clothing-store/admin' C-m 'clear && bun dev' C-m 

tmux new-window -t $session:3 -n 'monitor'

tmux send-keys -t $session:3 'tmux split-window -h && htop' C-m  

tmux attach-session -t $session
