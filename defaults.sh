cd ~/Desktop/
ln -s ~/Dropbox/passlist.kdb "Passwords"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install sqlite
brew install python
pip install setuptools --upgrade
pip install pip --upgrade
brew install python3
pip3 install pip --upgrade
pip3 install setuptools --upgrade
brew install pypy
brew install go
brew update
brew install git
brew install vim
pip install virtualenvwrapper
defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.00001
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write com.apple.dock no-glass -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock showhidden -bool true
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

