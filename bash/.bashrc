# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# enable color support of ls and also add handy aliases
if [ $SHELL = "/bin/bash" -a -x /usr/bin/dircolors ]; then
  # You may uncomment the following lines if you want `ls' to be colorized:
  export LS_OPTIONS='--color=auto'
  eval "`dircolors --bourne-shell`"
  alias ls='ls $LS_OPTIONS'
  alias ll='ls --all --human-readable -l --size $LS_OPTIONS'
  alias l='ls $LS_OPTIONS -lA'

  # Some more alias to avoid making mistakes:
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
fi

export VISUAL=nano
export EDITOR="$VISUAL"
