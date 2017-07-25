# Load ~/.extra, ~/.bash_prompt, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# automatically correct mistyped directory names on cd
shopt -s cdspell

# make emacs the default editor
export EDITOR="emacs"

# select global ruby version from rbenv global
export PATH="$HOME/.rbenv/shims:$PATH"

# select gcc over clang
export PATH="/usr/local/Cellar/gcc/6.1.0/bin:$PATH"

# add macport
export PATH="/opt/local/bin:$PATH"
