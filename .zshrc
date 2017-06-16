export TERM=xterm-256color
ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-\"You\'re entirely bonkers. But I\'ll tell you a secret. All the best people are.\" }

# Path to your oh-my-zsh installation.
export ZSH=/Users/Aaron/.oh-my-zsh
#export ZSH=$HOME/.oh-my-zsh

# export PATH="/usr/local/opt/ruby/bin"
export PATH="$PATH:~/.cabal/bin"
#export PATH="$PATH:`yarn global bin`"

# Store out environment variables elsewhere; we don't want to save these to git
source ~/.GLOBAL_ENV

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ahook2"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(mercurial)
plugins=(autoenv)
plugins=(git man dotenv)
plugins=(last-working-dir)
plugins=(thefuck)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.cabal/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
# eval $(thefuck --alias FUCK)
# alias fuck-it='export THEFUCK_REQUIRE_CONFIRMATION=False; fuck; export THEFUCK_REQUIRE_CONFIRMATION=True'

echo
fortune

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l='ls'
alias la='ls -a'
alias c='clear'
alias vi="mvim -v"
alias e='vi'
alias lol='zsh ~/src/shell_scripts/lol.sh'
alias heorku="heroku"
alias bundel="bundle"
alias dot="bundle exec rspec"
alias todo='grep -lr "TODO" * > list.todo'
alias shell='vi ~/.zshrc'
alias sosh='source ~/.zshrc'
alias ushell='shell && sosh'
alias home='cd ~'

alias renew="rails db:drop && rails db:create && rails db:migrate && rails db:seed && rails s"

#git aliases
alias gaa="git add ."
alias gd="git diff"
alias gs="git status"
alias gitout="git checkout"
alias gc="git commit -m"
alias gitgo="git push origin master"
alias githeroku="git push heroku master"
alias gl='/usr/bin/git log --date-order --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --date=relative'
alias git nuke="git clean -fdx && git reset --hard"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
