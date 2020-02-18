set -o vi
setopt prompt_subst # needs to be on so I can get the time updated on each recalculation of the prompt
setopt cdablevars # be able to cd to strings contained in variables
setopt histignorespace # if a command starts with a space, it is not added to the history
setopt ignoreeof # do not exit with Ctrl-D
setopt autopushd pushdminus pushdsilent pushdtohome # 

# escaped color codes
TURQUOISE="[36m"
GREEN="[32m"
WHITE="[00m"
RED="[31m" # I'd prefer a lighter shade of red, but whatever

# functions
get_git_branch() {
	git branch --list 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ ($RED\1$WHITE)/"
}

PS1='[$GREEN${$(date -d now +'%H:%M:%S')}$WHITE] ${PWD##}${$(get_git_branch)} $ '


alias c=clear
alias q=exit
alias d="dirs -v"
alias dup="st & disown"
alias ls="ls --color"
alias la="ls -la --color"
alias lah="ls -lah --color"
alias grep="grep --color"

export torgglercom="~/suticlients/torgglercom/web/app/theme/chimica"

#Stuff for work

#Node version management
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
