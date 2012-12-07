#Zsh de base, charge le module de completion, puis mes alias et autres configurations
zmodload zsh/complist
autoload -U compinit && compinit

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
zstyle ':completion:*' menu select=5
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*:*:cd:*' tag-order local-directories path-directories
#zstyle ':completion:*' completer _complete _ignored _approximate

_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1	# Because we didn't really complete anything
}
zstyle ':completion:::::' completer _force_rehash _complete _approximate

zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' ''
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
#zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*:processes' command 'ps --sort -pid'

setopt hist_verify  appendhistory autocd hist_ignore_all_dups extendedglob correctall nomatch
unsetopt beep extendedglob notify rm_star_silent

#Chargment helpers
source $HOME/.zsh_helpers

#Trucs en vrac
source $HOME/.zsh_misc

#Alias
source $HOME/.zsh_aliases
