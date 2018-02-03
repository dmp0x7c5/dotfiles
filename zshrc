#
# ========================================================================
# [dmp's .zshrc]
# ========================================================================
#
# Oh-my-zsh part could be found following line ~240
#

export LC_ALL='en_US.UTF-8'

#] aliases [
alias l="ls -G"
alias ls="ls -G"
alias la="ls -G -a"
alias ll="ls --G -l"
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias lss='ls -Shlr'
alias lssa='ls -aShlr'
alias nutki='echo "♫ ♪ ♪ ♫"'
alias qnapi="qnapi -c -q"

alias ldnotice='while true; do notify-send "LD notice: Do reality test, now :)" && sleep 10m; done'

alias -s pdf=qpdfview

alias c="clear"
alias mv="nocorrect mv"
alias cp='nocorrect cp'
alias cpr='nocorrect cp -avr'
alias mkdir='nocorrect mkdir'

alias chromium-tor='chromium-browser --proxy-server="socks5://localhost:9050"'
alias netbeans-7.2-aa='netbeans-7.2 -J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=lcd'
alias spacemacs='open -a Emacs'

# develiases
alias g="git"
alias postgres_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# for vim-rails purposes system ctags renamed
#alias ctags="`brew --prefix`/bin/ctags"

# disable control-s suspend
setopt noflowcontrol
stty stop undef
stty start undef

alias hdmi_off="xrandr --output HDMI-0 --off"
alias hdmi_on="xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --output LVDS-0 --mode 1366x768 --pos 1920x312"

alias mp="mplayer"
alias mpf="mplayer -fs"
alias mphdmi="mplayer -ao alsa:device=hw=0.3 -channels 6"
alias mphdmif="mplayer -fs -ao alsa:device=hw=0.3 -channels 6"

alias sx="startx &"
alias koniec="sudo /sbin/poweroff & logout"
alias cm="cat ~/.bashrc | grep -i "
alias ct="cat ~/temp | grep -i "
alias df="df -h"
alias free="free -m"
alias nmapscan="nmap -vvv -sV -T5"
alias mountsda="sudo /usr/local/bin/mountsda.sh"

alias ss='scrot -cd 7 ~/%Y%m%d%H%M_ss.png'
alias runasmoc='~/devel/scripts/runasmoc.sh'
alias amarok='amarok && sleep 5 && dcop kded kded loadModule kdetrayproxy'

export WQ3='ryjek.chopin.edu.pl:44830'
alias westernq3='startx /usr/games/bin/quake3 +set fs_game westernq3 +connect $WQ3 -- :4'

#[ obexftp via bt ]#
alias phoneput="obexftp -b 00:12:EE:FB:9D:77 -p "
alias phoneobex="obexftp -b 00:12:EE:FB:9D:77"
alias phoneget="~/devel/py/obsol.py "
export SEPIC="Pictures/camera_semc"

#[ global aliases ]#
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep '
alias -g L='| less'


#] prompt [#
autoload - U colors; colors
#PROMPT="%{$fg_bold[white]%}[%{$fg_bold[cyan]%}%n%{$fg_bold[white]%}[%{$fg_no_bold[cyan]%}@%{$fg_bold[white]%}]%{$fg_no_bold[cyan]%}%m%{$fg_bold[white]%}%{$fg_bold[white]%}] %{$reset_color%}"
#PROMPT='%m%# '    # default prompt
#RPROMPT="%{$fg_bold[cyan]%~%{$reset_color%}"
#PROMPT="%{$fg_bold[white]%}:%{$fg_bold[cyan]%}:%{$fg_bold[green]%}:%{$reset_color%} "
PROMPT="%{$fg_bold[blue]%}:%{$fg_bold[green]%}:%{$fg_bold[blue]%}:%{$reset_color%} "


#] env [#
export EDITOR=vim # default editor (:
export HELPDIR=/usr/local/lib/zsh/help  # directory for run-help function to find docs
#export JAVA_HOME=/home/dmp/.gentoo/java-config-2/current-user-vm

#] history [#
HISTSIZE=50000
HISTFILE=${HOME}/.zsh_history
SAVEHIST=80000

# Set/unset  zsh options
setopt share_history
setopt cdablevars autolist
setopt correctall recexact longlistjobs
setopt histignoredups pushdsilent
setopt pushdminus rcquotes
setopt prompt_cr

#[opts] jobs
setopt notify # report status of background jobs immediately
setopt check_jobs # report status of bg-jobs if exiting a shell with job control enabled

#[opts] cd&pushd
setopt autocd  # if a directoryname is entered like a command, and there is no command of that name; the 'cd' command is executed for that directory
setopt auto_pushd # make cd push the old directory to the dirstack

#[opts] in&out
unsetopt clobber # disallow '>'
setopt correct # try to correct the spelling of commands

#[opts] globbing
setopt extended_glob # zsh's extended globbing features
setopt glob_dots # don't require a leading dot for matching 'hidden' files

#[opts] zle
unsetopt beep

#setopt c_bases # output hex-numbers in 0x1F format
unsetopt bgnice
unsetopt autoparamslash

# Autoload zsh modules when they are referenced
#zmodload -a zsh/stat stat
#zmodload -a zsh/zpty zpty
#zmodload -a zsh/zprof zprof
#zmodload -ap zsh/mapfile mapfile

# Some nice key bindings
#bindkey '^X^Z' universal-argument ' ' magic-space
#bindkey '^X^A' vi-find-prev-char-skip
#bindkey '^Xa' _expand_alias
#bindkey '^Z' accept-and-hold
#bindkey -s '\M-/' \\\\
#bindkey -s '\M-=' \|



#] titlebar in terminal [#
case $TERM in (*rxvt*|*term)
	precmd(){ # content in ZLE
		print -Pn "\e]0; %l  ][ %2d \a"
	}
	preexec(){ # while exec 
		print -Pn "\e]0; %l ][ $1\a"
	}
	;;
esac

#] completion [#
autoload -U compinit
compinit

# Completion Styles

# list of completers to use
zstyle ':completion:*' complete _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
#zstyle ':completion:*' menu select=long-list select=1
#zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors \
    'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

# insert all expansions for expand completer
zstyle ':completion:*:expand:*' tag-order all-expansions

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# command for process lists, the local web server details and host completion
#zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'public_html'
#zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
zstyle '*' hosts $hosts

# Filename suffixes to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' \
    '*?.old' '*?.pro'
# the same for old style completion
#fignore=(.o .c~ .old .pro)

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'

# Use hard limits, except for a smaller stack and no core dumps
#unlimit
#limit stack 8192
#limit core 0
#limit -s


# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
LS_COLORS='no=00:fi=00:di=01;37;40:ln=00;36;40:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;33:*.jpeg=01;33:*.gif=01;33:*.bmp=01;33:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;33:*.tif=01;35:*.tiff=01;35:*.png=01;33:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;33:*.xwd=01;35:*.yuv=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=01;36:*.mpc=01;36:*.ogg=01;36:*.ra=01;36:*.wav=01;36:';
export LS_COLORS

#] PATH changes

# mac bins and make sure that /usr/local/bin is before /usr/bin
export PATH=/Users/dmp/Applications/:/usr/local/bin/:$PATH
# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


#
# ========================================================================
# [oh-my-zsh part]
# 	Note that prompt and completions may be redefined
# ========================================================================
#

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git rvm osx web_search brew screen battery)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey -v			# vi key bindings
bindkey ' ' magic-space		# also do history expansion on space
bindkey '^I' complete-word	# complete on tab, leave expansion to _expand
bindkey '^a' beginning-of-line	# cursor to ^
#bindkey '^e' end-of-line	# cursor to $
bindkey '^r' history-incremental-search-backward
bindkey '^e' expand-cmd-path	# C-e for expanding path of typed command

alias gpr='open "https://github.com/netguru/ikea-eb/compare/master...`git rev-parse --abbrev-ref HEAD`?expand=1"'
