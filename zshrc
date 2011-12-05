export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

setopt AUTO_LIST
setopt AUTO_MENU
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

eval `dircolors -b`
source ~/.aliasrc

bindkey -v
# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[2~" insert-last-word
bindkey "\e[3~" delete-char
bindkey "\e[4~" end-of-line
bindkey "\e[5~" backward-word
bindkey "\e[6~" forward-word
bindkey "\e[A"	up-line-or-search
bindkey "\e[B"	down-line-or-search
bindkey "\e[C"	forward-char 
bindkey "\e[D"	backward-char

# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

autoload -U compinit
compinit

autoload -U promptinit
promptinit

#export PS1="$(print '%{\e[1;31m%}%?%{\e[0m%}') $(print '%{\e[1;33m%}%n%{\e[0m%}') $(print '%{\e[1m%}@%{\e[0m%}') $(print '%{\e[1;35m%}%y%{\e[0m%}') $(print '%{\e[1m%}%#%{\e[0m%}') "
export PS1="$(print '%{\e[1;31m%}%?%{\e[0m%}') $(print '%{\e[1;33m%}%m%{\e[0m%}') $(print '%{\e[1m%}%#%{\e[0m%}') "
export PS2="$(print '%{\e[1;34m%}%_>%{\e[0m%}') "
export RPROMPT="$(print '%{\e[1;34m%}%d%{\e[0m%}')"
