export SHELL=/usr/local/bin/zsh
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
