# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# ------------------- Aliases -------------------
alias vi='vim'
alias sudo='sudo -E'

# cd
alias ..='cd ..'

# ls
#alias ls='ls --color=auto'
#alias la='ls -lathr'

# colorls
alias ls='colorls'
alias la='colorls -lA'

# cat
alias cat='bat --style plain'
# ------------------- Promt -------------------
PS1="> "

# ------------------- Colorls -------------------
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH="$HOME/Desktop/.gem/colorls/bin:$PATH"
