# Uninstall homebrew
brew remove --force $(brew list)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
