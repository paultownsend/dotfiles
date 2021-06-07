# prompt.zsh

autoload -Uz vcs_info
setopt prompt_subst

precmd() {
    vcs_info
}

+vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep -m 1 '^??' &> /dev/null ; then
        hook_com[misc]+='?'
    fi
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' max-exports 2
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:git*' unstagedstr '!' # %u
zstyle ':vcs_info:git*' stagedstr '+' # %c
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked # %m
zstyle ':vcs_info:git*' formats '%F{196}%m%u%F{118}%c%f (%F{cyan}%b%f)'

ZLE_RPROMPT_INDENT=0
PROMPT='(%(!.%F{magenta}#.%F{cyan}%%)%f) %~%f %B%F{white}❯%b%f '
RPROMPT='${vcs_info_msg_0_}'
