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
":/Users/kostya_by/.rvm/bin"
source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

PROMPT='%{$fg[green]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

