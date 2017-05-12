case ${TERM} in
  xterm*|rxvt*|screen*|Eterm|aterm|kterm|gnome*)
    PS1=$'%{\e[1;34m%}%n %{\e[0m%}at %{\e[0;33m%}%M %{\e[0m%}in %{\e[1;32m%}%~ %b$(git_super_status)
%{\e[1;36m%}($[HISTCMD-1])%{\e[0m%}%{\e[1;30m%}>>> %{\e[0m%}'
    ;;
  # for emacs
  eterm*|"dumb")
    PROMPT_COMMAND=
    PROMPT=$'%{\e[0;34m%}%B┌─[%{\e[1;32m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0;33m%}%b$(git_super_status)
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}%b$[HISTCMD-1]%{\e[0;34m%}%B]%{\e[0m%}%b '
esac

export LSCOLORS="gxfxcxdxbxegedabagacad"
export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
