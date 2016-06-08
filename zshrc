export ZSH=/Users/kostya_by/.oh-my-zsh
ZSH_THEME=""

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"

plugins=(git)
export PATH="/usr/local/bin"\
":/usr/bin"\
":/bin"\
":/usr/sbin"\
":/sbin"\
":/usr/texbin"\
":/Users/kostya_by/.rvm/bin"\
"/usr/local/opt/go/libexec/bin"

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

if [[ -z $ZSH_THEME_CLOUD_PREFIX ]]; then
    ZSH_THEME_CLOUD_PREFIX='☁'
fi

PROMPT='%{$fg[cyan]%}$ZSH_THEME_CLOUD_PREFIX %{$fg[green]%}%p %{$fg[green]%}%c %{$fg[cyan]%}$(git_prompt_info)%{$fg[blue]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"

export LSCOLORS="Exfxcxdxbxegedabagacad"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt null_glob

# Functions for competitive programming
function compile() {
  clang++ -O2 -Wl,-stack_size -Wl,0x10000000 -I/Users/kostya_by/Programming/git-repos/survival-kit -DPENGUINS -x c++ -std=c++11 -o $1 $1.cpp
}

function test_one() {
  echo "Testing $2"
  echo "**********************"
  ./$1 < $2
  echo "**********************"
}

function test_many() {
  for input_file in ${@:2}
  do
    test_one $1 $input_file
  done
}

function test_all() {
  for input_file in *.in
  do
    test_one $1 $input_file
  done
}

# Alias for Distributed Code Jam
alias dcj='/Users/kostya_by/Programming/contests/codejam/dcj/dcj.sh'

# Enables Google Cloud CLI completion
source '/Users/kostya_by/google-cloud-sdk/path.zsh.inc'
source '/Users/kostya_by/google-cloud-sdk/completion.zsh.inc' 

# Makes RVM working
export PATH="$PATH:$HOME/.rvm/bin"

