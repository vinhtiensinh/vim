export PATH=/$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin:$HOME/.rvm/gems/ruby-1.9.3-p327/bin:$HOME/data/adt-bundle/sdk/platform-tools:$HOME/data/adt-bundle/sdk/tools

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
alias autodeck='cd ~/data/autodeck'

alias sb='source ~/.bashrc'

alias grake='rake -T | grep'
alias dbmigrate='rake db:migrate; RAILS_ENV=test rake db:migrate'
alias dbcreate='rake db:create; RAILS_ENV=test rake db:create'
alias dbdrop='rake db:drop; RAILS_ENV=test rake db:drop'
alias dbrollback='rake db:rollback; RAILS_ENV=test rake db:rollback'
alias dbconsole='rails dbconsole'
alias truecrypt='/Applications/TrueCrypt.app/Contents/MacOS/Truecrypt --text'
alias srspec='RSPEC_RUN=scenario rspec '
alias unicorn='unicorn -c config/unicorn.rb'
alias tmssql='OVERRIDE_database_type=sqlserver OVERRIDE_database_host=dev-00194 OVERRIDE_database_port=1433 OVERRIDE_database_name=sql_server_dev_test OVERRIDE_database_username=dev OVERRIDE_database_password=password ./jruby -S rake db:remigrate'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


## IBSA alias
alias fmmount='truecrypt -t -k "" --protect-hidden=no ~/data/ibs ~/data/fm'
alias spcmount='truecrypt -t -k "" --protect-hidden=no ~/data/spcf ~/data/spcs'
alias spcdismount='truecrypt -d ~/data/spcf'
alias fmt='ssh vinht@test-wgnow-filex.ibsa.vlan'
alias fmuat='ssh vinht@uat-wgnow-filex.ibsa.vlan'
alias cdfm='cd ~/data/fm'
alias cdorigination='cd ~/data/fm/fm_origination_express'
alias cdcredit='cd ~/data/fm/fm_credit'
alias cdsettlements='cd ~/data/fm/fm_settlements'
alias cdcontract='cd ~/data/fm/fm_retail_contract_management'
alias cdadmin='cd ~/data/fm/fm_admin'
alias cdbase='cd ~/data/fm/fm_base'
alias cdcommisions='cd ~/data/fm/fm_commissions'
alias cdcollections='cd ~/data/fm/fm_collections'
alias playdev='ansible-playbook -i hosts/dev.conf --extra-vars "rails_env=test_production"'
alias playprod='ansible-playbook -i hosts/prod.conf --extra-vars "rails_env=production"'
alias dbmtest="OVERRIDE_database_type=sqlserver OVERRIDE_database_host=192.168.168.106 OVERRIDE_database_port=1433 OVERRIDE_database_name=sam_test OVERRIDE_database_username=samr OVERRIDE_database_password=1bsQwerty ./jbundle exec rake db:migrate"

PS1="[\t]\W $ "
