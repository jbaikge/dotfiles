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
PS1='[\u@\h \W]\$ '
PS1='\[$txtgrn\]\u@\h\[$txtrst\]:\[$txtcyn\]\w\[$txtrst\]$ '

# Remove duplicates from history - ignoredups,ignorespace
export HISTCONTROL=ignoreboth
export PATH=~/bin:$PATH

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# Display error codes
EC() { echo -e '\e[1;33m'code $?'\e[m'; }
trap EC ERR

alias ls='ls --color=auto'
alias grep='grep --color=auto --exclude-dir=.svn --exclude-dir=.git'
