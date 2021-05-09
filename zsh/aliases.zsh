# aliases.zsh

alias ..='cd ..'
alias l='ls -1'
alias l.='ls -d .*'
alias la='ls -la'
alias ll='ls -l'
alias mkdir='mkdir -p'
alias mv='mv -v'

# preserve timestamps where possible
alias cp='cp -pv'
alias rsync='rsync -tv'
alias scp='scp -p'
alias wget='wget -N'

# always enable colored grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias zgrep='zgrep --color=auto'

# ephemeral ssh - no host key checking/saving, and no warnings
alias essh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR'
