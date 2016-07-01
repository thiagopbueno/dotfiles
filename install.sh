# Install homebrew
printf '>> Installing homebrew & cask =============================================================\n\n'
/usr/bin/ruby -e "$(curl =fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
printf '\n\n'


# Install dev tools
printf '>> Installing dev tools ===================================================================\n\n'
brew install git
brew cask install iterm2
brew cask install sublime-text
brew install emacs --with-cocoa
brew linkapps emacs
brew install gdb
brew install gcc
printf '\n\n'


# Install libraries
printf '>> Installing libraries ===================================================================\n\n'
brew install libxml2 libxslt homebrew/dupes/libiconv
brew link libxml2 libxslt libiconv --force
printf '\n\n'


# Install Ruby
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


# Install Python
printf '>> Installing Python ======================================================================\n\n'
brew install python
pip install numpy
pip install matplotlib
pip install scipy
pip install scikit-learn

brew install python3
pip3 install numpy
pip3 install matplotlib
pip3 install scipy
pip3 install scikit-learn
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/mac/tensorflow-0.9.0-py3-none-any.whl
sudo -H pip3 install --upgrade $TF_BINARY_URL
printf '\n\n'


# Install databases
printf '>> Installing databases ===================================================================\n\n'
brew install mysql
brew install postgresql
printf '\n\n'


# Install browsers
printf '>> Installing browsers ====================================================================\n\n'
brew cask install firefox
brew cask install google-chrome


# Others
printf '>> Installing other stuff =================================================================\n\n'
brew cask install spectacle
brew cask install google-drive
brew cask install dropbox
brew cask install spotify
brew cask install vlc
brew cask install skype
brew cask install transmission
brew cask install virtualbox
