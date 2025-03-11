# `~/.profile`: executed by the command interpreter for login shells.
# This file is not read by `bash(1)`, if `~/.bash_profile` or `~/.bash_login`
# exists.
# See /usr/share/doc/bash/examples/startup-files for examples.
# The files are located in the bash-doc package.

# If running bash:
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists.
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Set PATH so it includes user's private bin if it exists.
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# System-specific code goes from here!
# 
# Set PATH so it includes user's private bin if it exists.
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

export PATH="$PATH:usr/local/cuda-12.6/bin"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/michael/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/michael/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
