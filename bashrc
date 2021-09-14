export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin:/usr/local/heroku/bin:$PATH:$HOME/data/bin:/usr/bin:$HOME/data/autodeckD/mechanicdesk/bin/prod:/usr/local/Cellar/node/0.10.29/bin/:$HOME/data/flutter/bin"

export PGHOST=localhost

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm use ruby-2.1.0 >> /dev/null

export FMTOOLS_USER=vinht

alias gc='git commit -m'
alias ga='git add'
alias gd='git diff --color'
alias gdc='git diff --cached --color'
alias gs='git status'
alias gb='git branch'
alias gk='git checkout'
alias gl='git pull'
alias gp='git push'
alias gmm='git merge master'
alias gmr='git merge release'
alias gkr='git checkout release'
alias gkm='git checkout master'

alias rs='rails server'
alias be='bundle exec'
alias bake='bundle exec rake'
alias data='cd ~/data'
alias mechanicdesk='cd ~/data/autodeckD/mechanicdesk'
alias md='cd ~/data/autodeckD/mechanicdesk'
alias mdw='cd ~/data/autodeckD/mdweb'
alias mdm='cd ~/data/autodeckD/MechanicDeskApp3.0'
alias svb='cd ~/data/ServiceBook'

alias sb='source ~/.bashrc'

alias grake='rake -T | grep'
alias dbmigrate='bundle exec rake db:migrate; RAILS_ENV=test bundle exec rake db:migrate'
alias dbcreate='bundle exec rake db:create; RAILS_ENV=test bundle exec rake db:create'
alias dbdrop='bundle exec rake db:drop; RAILS_ENV=test bundle exec rake db:drop'
alias dbrollback='bundle exec rake db:rollback; RAILS_ENV=test bundle exec rake db:rollback'
alias dbconsole='bundle exec rails dbconsole'
alias bx='bundle exec'
alias bxrs='bundle exec rake spec'
alias unicorn='unicorn -c config/unicorn.rb'

alias mdmount='/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt --mount /Volumes/data/mdD /Users/vinhtran/data/autodeckD'

alias startpostgres='pg_ctl start -D /usr/local/var/postgresql@9.4'
alias runad='sudo pfctl -evf redirect.conf;bundle exec unicorn -c config/unicorn.conf'
alias ra='bin/reassets'
alias flutter117='~/data/flutter117/bin/flutter'
PS1="[\t]\W $ "

#yarn
alias ygw="yarn workshops:generate"
alias ygf="yarn franchisors:generate"
alias ygs="yarn support-portal:generate"

###-tns-completion-start-###
if [ -f /Users/vinhtran/.tnsrc ]; then 
    source /Users/vinhtran/.tnsrc 
fi

alias cd.="cd .."

#use vim on the editor
set -o vi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
