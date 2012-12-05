zmodload zsh/complist
autoload -U compinit && compinit

#projet c :
#source /usr/local/mips/setup.sh
#pgl
#GITGL=ssh://gl13@ensibm.imag.fr/~/git/
#export GL_GLOBAL=$HOME/imag/gl_src/Global
#export PATH=/opt/msp430-gcc-4.4.3/bin:$GL_GLOBAL/Bin:$HOME/imag/projet_gl/Exec:$PATH
export BOOST_INSTALL=$HOME/local
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

zstyle -e ':completion:*' hosts 'reply=(telesun.imag.fr ensisun.imag.fr incas.imag.fr idfreeze.imag.fr incas idfreeze)'
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_verify  appendhistory autocd hist_ignore_all_dups extendedglob correctall nomatch
unsetopt beep extendedglob notify rm_star_silent

export PS1="[%T]:%~$"
export RPS1="(%n@%M)"

# Pour changer de repertoire rapidement
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

_run_SciTE() {
scite -loadsession:$1
}
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cd..='cd ..'
alias s='scite'
alias sls='_run_SciTE'
alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lal='ls -al'
alias rm='rm -i'
alias wish='wish8.5'
alias gis='git status'
alias gil='git log'
alias gip='git pull'
alias gipu='git push'
alias gic='git commit'
alias gich='git checkout'
alias gib='git branch'
alias -s txt="less"
alias -s pdf="evince"
alias -s h="vim"
alias -s c="vim"
alias -s cpp="vim"
alias vim="vim -i NONE"
alias v="vim"
alias calc="bc"
alias -s tcl="vim"
alias apt-get="nocorrect apt-get"
alias sudo="nocorrect sudo"
fignore=(.ali)

bindkey ';5D' backward-word
bindkey ';5C' forward-word

#alias indent="indent -nbad -bap -nbc -bbo -hnl -br -brs -c33 -cd33 -ncdb -ce -ci4 -cli0 -d0 -di1 -nfc1 -i8 -ip0 -l80 -lp -npcs -nprs -npsl -sai -saf -saw -ncs -nsc -sob -nfca -cp33 -ss -ts8 -il1"
	    
#Less plus sympatoche : 
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#la speciale telesun :
#mesg n



export JAVA_HOME=/usr/lib/jvm/java-6-sun
export LD_LIBRARY_PATH=$BOOST_INSTALL:$BOOST_INSTALL/lib:$JAVA_HOME/jre/lib:$JAVA_HOME/jre/lib/amd64/server:$HOME/libs:$HOME/local/lib:$LD_LIBRARY_PATH
export PATH=$JAVA_HOME/bin:$HOME/bin:$HOME/local/bin:/usr/include/x86_64-linux-gnu:$PATH
export CBLAS_LDFLAGS="-L/usr/lib/atlas-base -llapack -lcblas -latlas"
export CBLAS_CPPFLAGS="-I/usr/include/atlas"
