bindkey -v # activate vi mode
setopt prompt_subst # needs to be on so I can get the time updated on each recalculation of the prompt
setopt cdablevars # be able to cd to strings contained in variables
setopt histignorespace # if a command starts with a space, it is not added to the history
setopt ignoreeof # do not exit with Ctrl-D
setopt autopushd pushdminus pushdsilent pushdtohome # pushes the current directory to the directory stack
setopt noauto_remove_slash

DIRSTACKSIZE=10 # maximum amount of items in the directory stack
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

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

bindkey -a k history-beginning-search-backward
bindkey -a j history-beginning-search-forward

alias c=clear
alias q=exit
alias :q=exit
alias d="dirs -v" # print recently visited directories
alias dup="foot & disown"
alias ls="ls --color"
alias la="ls -la --color"
alias lah="ls -lah --color"
alias grep="grep --color"
alias vopenscad="~/scripts/vim-openscad.sh"
alias vpov="~/scripts/vim-povray.sh"
alias tags="ctags -R --exclude=.git --exclude=node_modules"

# Custom autocomplete commands
#completion::complete:dvips:option-o-1:files
#compdef dd=less

export torgglercom="~/suticlients/torgglercom/web/app/theme/chimica"

# Stuff for work

# Node version management
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
