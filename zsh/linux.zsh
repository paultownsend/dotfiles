alias ls='ls -FhN --color=auto --group-directories-first'

eval $(dircolors $HOME/.dircolors)

# fzf
if _is_callable fzf; then
    _is_callable fdfind && alias fd=fdfind
    if [[ -f /etc/debian_version ]]; then
        _source /usr/share/doc/fzf/examples/key-bindings.zsh
        _is_callable fd && _source /usr/share/zsh/vendor-completions/_fzf
    fi
fi
