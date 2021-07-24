export EDITOR=vim

# brew
export HOMEBREW_NO_AUTO_UPDATE=true

# ruby-build
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# rbenv
eval "$(rbenv init -)"
# https://github.com/rbenv/rbenv/issues/1267
# export GEM_HOME="$HOME/.gem"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


# env
export DISABLE_DATABASE_ENVIRONMENT_CHECK=1
export RAILS_LOG_TO_STDOUT=1

# go
[[ -s "/Users/admin/.gvm/scripts/gvm" ]] && source "/Users/admin/.gvm/scripts/gvm"

# alias
alias @gpd="git rebase origin/master && git push origin develop:develop_ztluo"
alias @gems='gem install -N bundler overcommit rubocop  solargraph && gem install bundler -v "<2"'
alias @pon="export https_proxy=http://127.0.0.1:50066 http_proxy=http://127.0.0.1:50066 all_proxy=socks5://127.0.0.1:50065"
alias @poff="unset https_proxy http_proxy all_proxy"
alias @tdb='rails db:drop db:create && rails r "system \"psql -d #{ApplicationRecord.connection_config[:database]} -f #{Rails.root.join(\"tmp/db.sql\")}\""'
