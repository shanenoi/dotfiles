# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
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

# Path to your oh-my-zsh installation.
export ZSH="/home/`whoami`/.oh-my-zsh"
export HISTTIMEFORMAT="%s "

ZSH_THEME="afowler"
# ZSH_THEME="amuse"
# ZSH_THEME="robbyrussell"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby golang archlinux heroku yarn npm)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
set -o vi
# fm6000.pl -r 

{
	rvm use 2.7.2
} &> /dev/null

alias ls=exa
alias cat=bat
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
# bash /home/`whoami`/script/autorun.sh
# colorscript -r
DISABLE_MAGIC_FUNCTIONS=true
export DISABLE_MAGIC_FUNCTIONS=true
face=$(python -c 'import sys; print(""[int(sys.argv[1], 16) % 10], end="")' `date +"%S" | md5sum | sed 's/[ -]//g'`)
PROMPT="[$face] $PROMPT"
