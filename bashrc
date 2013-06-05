export PATH=/$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin
alias gc='git commit -m'
alias ga='git add'
alias gd='git diff --color'
alias gdc='git diff --cached --color'
alias gs='git status'
alias gk='git checkout'

alias rs='rails server'
alias be='bundle exec'
alias bake='bundle exec rake'
alias data='cd ~/data'

alias sb='source ~/.bashrc'

alias grake='rake -T | grep'
alias dbmigrate='rake db:migrate; RAILS_ENV=test rake db:migrate'
alias dbrollback='rake db:rollback; RAILS_ENV=test rake db:rollback'
alias truecrypt='/Applications/TrueCrypt.app/Contents/MacOS/Truecrypt --text'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


## IBSA alias
alias fmt='ssh vinht@test-wgnow-filex.ibsa.vlan'
alias fmuat='ssh vinht@uat-wgnow-filex.ibsa.vlan'
alias cdfm='cd ~/data/fm'
alias cdorigination='cd ~/data/fm/fm_origination_express'
alias cdcredit='cd ~/data/fm/fm_credit'
alias cdsettlements='cd ~/data/fm/fm_settlements'
alias cdcontract='cd ~/data/fm/fm_retail_contract_management'
alias cdadmin='cd ~/data/fm/fm_admin'
alias cdbase='cd ~/data/fm/fm_base'
