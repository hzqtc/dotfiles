export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

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

## Completion caching
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
##zstyle ':completion:*:cd:*' ignore-parents parent pwd
#
##Completion Options
#zstyle ':completion:*:match:*' original only
#zstyle ':completion::prefix-1:*' completer _complete
#zstyle ':completion:predict:*' completer _complete
#zstyle ':completion:incremental:*' completer _complete _correct
#zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
#
## Path Expansion
#zstyle ':completion:*' expand 'yes'
#zstyle ':completion:*' squeeze-shlashes 'yes'
#zstyle ':completion::complete:*' '\\'
#
#zstyle ':completion:*:*:*:default' menu yes select
#zstyle ':completion:*:*:default' force-list always
#
## GNU Colors 需要/etc/DIR_COLORS文件 否则自动补全时候选菜单中的选项不能彩色显示
#[ -f /etc/DIR_COLORS ] && eval $(dircolors -b /etc/DIR_COLORS)
#export ZLSCOLORS="${LS_COLORS}"
#zmodload zsh/complist
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#
#zstyle ':completion:*' completer _complete _match _approximate
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric
#
#compdef pkill=kill
#compdef pkill=killall
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:processes' command 'ps -au$USER'
#
## Group matches and Describe
#zstyle ':completion:*:matches' group 'yes'
#zstyle ':completion:*:options' description 'yes'
#zstyle ':completion:*:options' auto-description '%d'
#zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
#zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
#zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'

autoload -U promptinit
promptinit

#export PS1="$(print '%{\e[1;31m%}%?%{\e[0m%}') $(print '%{\e[1;33m%}%n%{\e[0m%}') $(print '%{\e[1m%}@%{\e[0m%}') $(print '%{\e[1;35m%}%y%{\e[0m%}') $(print '%{\e[1m%}%#%{\e[0m%}') "
export PS1="$(print '%{\e[1;31m%}%?%{\e[0m%}') $(print '%{\e[1;33m%}%m%{\e[0m%}') $(print '%{\e[1m%}%#%{\e[0m%}') "
export PS2="$(print '%{\e[1;34m%}%_>%{\e[0m%}') "
export RPROMPT="$(print '%{\e[1;34m%}%d%{\e[0m%}')"

export SVN_EDITOR='vim'
