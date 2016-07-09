PS1=''
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PS1=$'%{\e[1;34m%}%n %{\e[0m%}at %{\e[0;33m%}%M %{\e[0m%}in %{\e[1;32m%}%~ %b$(git_super_status)
%{\e[1;30m%}>>> %{\e[0m%}'
    ;;
  # for emacs
  "dumb")
    PROMPT_COMMAND=
    PS1="> "
esac
