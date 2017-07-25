# Install homebrew
printf '>> Installing homebrew & cask =============================================================\n\n'

/usr/bin/ruby -e "$(curl =fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/fonts

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


# Install databases
printf '>> Installing databases ===================================================================\n\n'

brew install mysql
brew install postgresql

printf '\n\n'


# Install fonts
brew cask install font-inconsolata


# Install browsers
printf '>> Installing browsers ====================================================================\n\n'

brew cask install firefox
brew cask install google-chrome


# Others
printf '>> Installing other stuff =================================================================\n\n'

brew cask install dropbox
brew cask install flux
brew cask install google-drive
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install transmission
brew cask install virtualbox
brew cask install vlc
