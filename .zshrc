export PATH=$PATH:/usr/local/go/bin
export GOPATH=$(go env GOPATH)
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$HOME/Downloads/applications/gh/gh_1.14.0_linux_386/bin
export PATH=$PATH:$HOME/Downloads/applications/dbeaver
export PATH=$PATH:$HOME/workspace/freelancer/how_to_run

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export GT_IM_MODULE=ibus 

export ZSH="/home/`whoami`/.oh-my-zsh"
export HISTTIMEFORMAT="%s "

ZSH_THEME="afowler"
plugins=(git rails ruby golang archlinux heroku yarn npm)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

set -o vi

{
	rvm use 2.7.2
} &> /dev/null

alias ls=exa
alias e=exit
alias cat=bat
alias noti='notify-send -i emblem-default "Done"'
# alias docker='sudo docker'
# alias docker-compose='sudo docker-compose'
DISABLE_MAGIC_FUNCTIONS=true
export DISABLE_MAGIC_FUNCTIONS=true
face=$(python -c 'import sys; print(""[int(sys.argv[1], 16) % 10], end="")' `date +"%S" | md5sum | sed 's/[ -]//g'`)
PROMPT="[$face] $PROMPT"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
