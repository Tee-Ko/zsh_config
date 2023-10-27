# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
#zstyle :compinstall filename '/home/tee-ko/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

HISTFILE="$XDG_CACHE_HOME/zsh/histfile"
[ -d "$XDG_CACHE_HOME/zsh" ] || mkdir -p "$XDG_CACHE_HOME/zsh"
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# prompt
PS1=''
PS1+=$'%(0?..%B%F{red} -> %(130?.terminated.%?)%b%f\n)'
PS1+='%F{white}[%(!.%F{red}.%F{blue})%n%F{default}%F{black}@%F{cyan}%M%f%F{white}]'
PS1+=' %F{white}%~ %F{blue}%#%f'



# completion
autoload -Uz compinit
zstyle ':completion:*' menu select=1
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' expand suffix
zstyle ':completion:*' verbose true
zstyle ':completion:*' completer _expand _complete _ignored
compinit
_comp_options+=(globdots)


#plugins
source "$HOME/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


alias ls="ls --color=auto"
alias ll="ls -hAlv --color=auto --group-directories-first --time-style=+"
alias grep="grep --color=auto"
alias pacman="sudo pacman"
alias apt="sudo apt"

