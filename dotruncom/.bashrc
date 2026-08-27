#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"
PS1="[\u@\h \W]\$ "

# Power Option Aliases
alias poff="poweroff"
alias rbt="sudo reboot"
alias sus="systemctl suspend"
alias gnout="gnome-session-quit --logout" # Log out from GNOME DE
alias lxout="lxqt-leave --logout" # Log out from LXQt DE

# Bluetooth and Network Aliases
alias bton="rfkill list unblock bluetooth | bluetoothctl power on"
alias btoff="rfkill list block bluetooth | bluetoothctl power off"
alias nmls="nmcli device wifi list"
alias nmconn="nmcli device wifi connect $1 --ask"

# TMUX Aliases
alias tmxls="tmux ls"
alias tmxattch="tmux attach -t $2"
alias tmxkills="tmux kill-server"
alias tmxkill="tmux kill-session -t $2"

# NVM for NodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Rust Cargo
. "$HOME/.cargo/env"

# Neovim
export PATH="$HOME/neovim/bin:$PATH"

# Zed
export PATH="$HOME/.local/bin:$PATH"

# Exercism
export PATH="$HOME/bin:$PATH"

# Starship
eval "$(starship init bash)"

# fzf
eval "$(fzf --bash)" # Set up fzf key bindings and fuzzy completion
