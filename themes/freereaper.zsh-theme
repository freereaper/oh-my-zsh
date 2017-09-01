case ${TERM} in
  xterm*|rxvt*|screen*|Eterm|aterm|kterm|gnome*)
    PS1=$'%{\e[1;34m%}%n %{\e[0m%}at %{\e[0;33m%}%M %{\e[0m%}in %{\e[1;32m%}%~ %b$(git_super_status)
%{\e[1;36m%}($[HISTCMD-1])%{\e[0m%}%{\e[1;32m%}>>> %{\e[0m%}'
    ;;
  # for emacs
  eterm*|"dumb")
    PROMPT_COMMAND=
    PROMPT=$'%{\e[0;34m%}%B┌─[%{\e[1;32m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} %{\e[0;33m%}%b$(git_super_status)
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}%b$[HISTCMD-1]%{\e[0;34m%}%B]%{\e[0m%}%b '
esac

export LSCOLORS="gxfxcxdxbxegedabagacad"
