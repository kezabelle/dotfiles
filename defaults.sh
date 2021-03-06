cd ~/Desktop/
ln -s ~/Dropbox/passlist.kdb "Passwords"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install sqlite postgres mysql redis
brew install python python3 pypy
pip install pip setuptools --upgrade
pip3 install pip setuptools --upgrade
pip_pypy install pip setuptools --upgrade
brew install go
brew install dos2unix
brew install ffmpeg --with-faac --with-fdk-aac --with-fontconfig --with-freetype --with-frei0r --with-libass --with-libbluray --with-libcaca --with-libquvi --with-libsoxr --with-libvidstab --with-libvorbis --with-libvpx --with-opencore-amr --with-openjpeg --with-openssl -with-opus --with-rtmpdump --with-schroedinger --with-speex --with-theora --with-tools --with-x265
brew install ssh-copy-id
brew install git git-extras
brew install vim
brew install trash rmtrash
# these are for Pillow
brew install libtiff libjpeg webp little-cms2 libpng
brew cask install acorn adium appcleaner avast cakebrew diffmerge dropbox firefox gas-mask google-chrome hex-fiend imageoptim keepassx karabiner launchrocket libreoffice licecap little-snitch liteide omnidisksweeper sequel-pro spotify virtualbox vagrant vagrant-manager vlc
pip3 install virtualenvwrapper
# most of this comes from
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.00001
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write com.apple.dock no-glass -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock showhidden -bool true
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
defaults write com.apple.helpviewer DevMode -bool true
defaults write com.apple.universalaccess reduceTransparency -bool true
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.finder EmptyTrashSecurely -bool true
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.spotlight orderedItems -array \
	'{"enabled" = 1;"name" = "APPLICATIONS";}' \
	'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
	'{"enabled" = 0;"name" = "DIRECTORIES";}' \
	'{"enabled" = 0;"name" = "PDF";}' \
	'{"enabled" = 0;"name" = "FONTS";}' \
	'{"enabled" = 0;"name" = "DOCUMENTS";}' \
	'{"enabled" = 0;"name" = "MESSAGES";}' \
	'{"enabled" = 0;"name" = "CONTACT";}' \
	'{"enabled" = 0;"name" = "EVENT_TODO";}' \
	'{"enabled" = 0;"name" = "IMAGES";}' \
	'{"enabled" = 0;"name" = "BOOKMARKS";}' \
	'{"enabled" = 0;"name" = "MUSIC";}' \
	'{"enabled" = 0;"name" = "MOVIES";}' \
	'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
	'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
	'{"enabled" = 0;"name" = "SOURCE";}' \
	'{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
	'{"enabled" = 0;"name" = "MENU_OTHER";}' \
	'{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
	'{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
	'{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
	'{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
defaults write -g ApplePressAndHoldEnabled -bool false
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null
sudo cp /etc/hosts /etc/hosts.original
echo '127.0.0.1 kez' | sudo tee -a /etc/hosts > /dev/null
echo 'http://rottmann.net/2013/03/launch-iterm-2-on-startup-without-opening-a-terminal-window/'
echo 'https://ohthehugemanatee.org/blog/2015/10/01/how-i-got-el-capitain-working-with-my-developer-tools/'
