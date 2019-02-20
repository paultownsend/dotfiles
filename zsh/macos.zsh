export HOMEBREW_NO_ANALYTICS=1

_is_callable gls && alias ls='gls -FhN --color=auto --group-directories-first'
_is_callable gdircolors && eval $(gdircolors -b $HOME/.dircolors)

alias br=brew
alias brup='brew upgrade'

# Emacs
e() {
    if _is_running Emacs; then
        emacsclient -n $@
    else
        /Applications/Emacs.app/Contents/MacOS/Emacs $@ &
    fi
}

_is_callable emacs && alias emacs='emacs -nw'
