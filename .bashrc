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

# changes the dafault editor to vim
# the variable VISUAL is searched first
# then the variable EDITOR is searched
# the EDITOR should be set to some basic editor like ex
export VISUAL=nvim

# user defined aliases
alias cdf='cd $(find . -type d | fzf)'
alias vf='vim $(find . -type f | fzf)'
alias l='fc -s'
