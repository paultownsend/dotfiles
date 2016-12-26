export HOMEBREW_NO_ANALYTICS=1

_is_callable gls && alias ls='gls -FhN --color=auto --group-directories-first'
_is_callable gdircolors && eval $(gdircolors -b $HOME/.dircolors)

alias br=brew
alias brup='brew upgrade'
