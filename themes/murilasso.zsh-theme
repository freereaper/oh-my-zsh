#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
#local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
#local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
#local rvm_ruby='%{$fg[red]%}$(rvm_prompt_info || rbenv_prompt_info)%{$reset_color%}'
#local git_branch='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'
#
#PROMPT="${user_host}:${current_dir} ${rvm_ruby}
#${git_branch} %B$%b "
#RPS1="${return_code}"
#
#ZSH_THEME_GIT_PROMPT_PREFIX=""
#ZSH_THEME_GIT_PROMPT_SUFFIX=""
#ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"

# PROMPT with git status
#source ~/.zplugins/zsh-git-prompt/zshrc.sh
PS1=''
case ${TERM} in
  xterm*|rxvt*|screen*|Eterm|aterm|kterm|gnome*)
    PS1=$'%{\e[1;34m%}%n %{\e[0m%}at %{\e[0;33m%}%M %{\e[0m%}in %{\e[1;32m%}%~ %b$(git_super_status)
%{\e[1;36m%}($[HISTCMD-1])%{\e[0m%}%{\e[1;30m%}>>> %{\e[0m%}'
    ;;
  # for emacs
  "dumb")
    PROMPT_COMMAND=
    PS1="> "
esac

export LSCOLORS="gxfxcxdxbxegedabagacad"
export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
