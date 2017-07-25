printf '>> Installing Ruby ========================================================================\n\n'

export RUBY_VERSION=2.3.1
brew install rbenv ruby-build
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
eval "$(rbenv init -)"
sudo gem install nokogiri -- --use-system-libraries
sudo gem install rails
rbenv rehash
printf '\n\n'
