# Aliases
alias l='ls'
alias la='ls -a'
alias c='clear'
alias vi="mvim -v"
alias e='vi'
alias heorku="heroku"
alias bundel="bundle"
alias dot="bundle exec rspec"
alias todo='grep -lr "TODO" * > list.todo'
alias shell='vi ~/.zshrc'
alias sosh='source ~/.zshrc'
alias ushell='shell && sosh'
alias home='cd ~'
alias de='deactivate'

# Git aliases
alias gc="git commit -m"
alias gs="git status"
alias githeroku="git push heroku master"
alias git nuke="git clean -fdx && git reset --hard"
alias gl='/usr/bin/git log --date-order --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --date=relative'

# Rails aliases
alias be="bundle exec"
alias rails="bundle exec rails"
alias rake="bundle exec rake"
