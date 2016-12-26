# prompt.zsh

autoload -U colors && colors

export PROMPT="%{$fg_bold[black]%}[%{$reset_color%}%m%{$fg_bold[white]%}:%{$reset_color%}%~%{$fg_bold[black]%}] %{$fg_bold[white]%}%#%{$reset_color%} "
