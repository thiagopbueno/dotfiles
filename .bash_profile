# Load ~/.extra, ~/.bash_prompt, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# automatically correct mistyped directory names on cd
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# make emacs the default editor
export EDITOR="emacs"

export PATH="$PATH:$HOME/bin"

# Python3.6
#export PYTHONPATH=/usr/lib/tensorflow/lib/python3.6:$PYTHONPATH/

# Bazel
source $HOME/.bazel/bin/bazel-complete.bash

# CUDA
export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

# MuJoCo
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/tbueno/.mujoco/mujoco200/bin
