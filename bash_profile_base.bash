#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~ PERSONAL, MACHINE-AGNOSTIC BASH PROFILE BASE ~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#


#### Prompt style #####

# Prompt color terms
green="\[\033[0;32m\]"
blue="\[\033[1;34m\]"
purple="\[\033[0;35m\]"
red="\[\033[0;31m\]"
yellow="\[\033[33m\]"

# Prompt content terms
reset="\[\033[0m\]"
current_user="\u"
current_dir="\W"
git_related=""
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=1
	git_related="\$(__git_ps1)"
fi

# Prompt assembly
export PS1="$green$current_user$purple$git_related$blue $current_dir $yellow# $reset"


##### Autocompletion #####

# Git autocompletion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash;
fi


#### Aliases

# Built-in command aliases
cs() {
	# Combine cd en ls
	cd "$1"
	ls "."
}
alias ll="ls -la"
alias myip='curl ipinfo.io/ip'

# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status


