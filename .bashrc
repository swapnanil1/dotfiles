#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='eza -al --color=always --group-directories-first'
alias pi='sudo pacman -S'
alias pr='sudo pacman -R'
alias prr='sudo pacman -Rns'
alias edithypr='vim ~/.config/hypr/hyprland.conf' 		# Quickly edit your hyprland
alias editwaybar='vim ~/.config/waybar/style.css' 		# Qucikly edit your waybar colors
alias vi='nvim'
eval "$(starship init bash)"					# Autostart Starship prompt
PS1='[\u@\h \W]\$ '
