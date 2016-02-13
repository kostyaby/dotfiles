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

docker-machine start default >& /dev/null
# Add default Docker configuration to the system variables
eval "$(docker-machine env default)"

alias compile='/Users/kostya_by/Programming/contests/SGU/task999/compile'

source '/Users/kostya_by/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/kostya_by/google-cloud-sdk/completion.zsh.inc'
