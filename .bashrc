#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1
txtblk=$(tput setaf 0)            # Black - Regular
txtred=$(tput setaf 1)            # Red
txtgrn=$(tput setaf 2)            # Green
txtylw=$(tput setaf 3)            # Yellow
txtblu=$(tput setaf 4)            # Blue
txtpur=$(tput setaf 5)            # Purple
txtcyn=$(tput setaf 6)            # Cyan
txtwht=$(tput setaf 7)            # White
txtdef=$(tput setaf 9)            # Default
bldblk=$(tput setaf 0; tput bold) # Black - Bold
bldred=$(tput setaf 1; tput bold) # Red
bldgrn=$(tput setaf 2; tput bold) # Green
bldylw=$(tput setaf 3; tput bold) # Yellow
bldblu=$(tput setaf 4; tput bold) # Blue
bldpur=$(tput setaf 5; tput bold) # Purple
bldcyn=$(tput setaf 6; tput bold) # Cyan
bldwht=$(tput setaf 7; tput bold) # White
unkblk=$(tput setaf 0; tput smul) # Black - Underline
undred=$(tput setaf 1; tput smul) # Red
undgrn=$(tput setaf 2; tput smul) # Green
undylw=$(tput setaf 3; tput smul) # Yellow
undblu=$(tput setaf 4; tput smul) # Blue
undpur=$(tput setaf 5; tput smul) # Purple
undcyn=$(tput setaf 6; tput smul) # Cyan
undwht=$(tput setaf 7; tput smul) # White
bakblk=$(tput setab 0)            # Black - Background
bakred=$(tput setab 1)            # Red
bakgrn=$(tput setab 2)            # Green
bakylw=$(tput setab 3)            # Yellow
bakblu=$(tput setab 4)            # Blue
bakpur=$(tput setab 5)            # Purple
bakcyn=$(tput setab 6)            # Cyan
bakwht=$(tput setab 7)            # White
bakdef=$(tput setab 9)            # Default
txtrst=$(tput sgr0)               # Text Reset
case $HOSTNAME in
	"sable")    hostcolor=$txtylw ;;
	"sharpie")  hostcolor=$txtblu ;;
	"squeaker") hostcolor=$txtred ;;
	*)          hostcolor=$bldwht ;;
esac
PS1='\[$txtwht\]\u\[$txtblk\]@\[$hostcolor\]\h\[$txtrst\]:\[$txtcyn\]\w\[$txtrst\]$ '

export EDITOR=/usr/bin/vim
export GOPATH=${HOME}/code/go
export HISTCONTROL=ignoreboth
export LPASS_HOME=${HOME}/.config/lastpass
export PATH=${HOME}/bin:${HOME}/code/go/bin:${HOME}/.local/bin:$PATH
export TODOTXT_CFG_FILE=${HOME}/.config/todo/config
export TODOTXT_DATE_ON_ADD=1
export TODOTXT_DEFAULT_ACTION=list
export TODOTXT_PRESERVE_LINE_NUMBERS=1

# virtualenvwrapper
export VIRTUALENV_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
WRAPPER=/usr/bin/virtualenvwrapper.sh
[ -f $WRAPPER ] && source $WRAPPER

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern ** used in a pathname expansion context will match all files and
# zero or more directories and  subdirectories.
shopt -s globstar

# Display error codes
EC() { echo -e '\e[1;33m'code $?'\e[m'; }
trap EC ERR

alias curl='curl -s'
alias grep='grep --color=auto --exclude-dir=.svn --exclude-dir=.git'
alias ls='ls --color=auto'
alias renum='ls | cat -n | while read n f; do nn=`printf %02d $n`; ln -s "$f" "$nn.jpg"; done'
[[ -x /usr/bin/subl3 ]] && alias subl='subl3'
alias t='~/bin/todo.sh'
complete -F _todo t
