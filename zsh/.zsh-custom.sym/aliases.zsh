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

# Docker aliases
alias docker-down="docker-compose down"
alias docker-logs="docker-compose exec app tail -f log/development.log"
alias docker-exec="docker-compose exec app"
alias docker-up="docker-compose up"
alias docker-run="docker-compose run"
alias docker-build="docker-compose build"
alias lh-run="docker-down && docker-compose up -d && sleep 1 && docker-logs"

# Connection aliases
alias connect-app-stg="ssh appukror01.stg.siteminder.com"
alias connect-app-preprod="ssh appukror11.preprod.siteminder.com"
alias connect-app-prod="ssh appukror01.uswest2.siteminder.com"
alias connect-apac-stg="ssh appauror01.stg.siteminder.com"
alias connect-apac-preprod="ssh appauror11.preprod.siteminder.com"
alias connect-apac-prod="ssh appauror01.uswest2.siteminder.com"

alias ssh_cleanup="pkill -KILL -f 'ssh:|ssh-agent'; launchctl stop com.openssh.sshd; rm -Rf ~/.ssh/connections/*;"
