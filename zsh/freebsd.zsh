alias ifstat='systat -ifstat scale mbyte 1'

_is_callable gnuls && alias ls='gnuls -FhN --color=auto --group-directories-first'
_is_callable dircolors && eval $(dircolors -b $HOME/.dircolors)
_is_callable doas && alias sudo=doas
