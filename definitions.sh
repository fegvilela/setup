# Dock icon size of 36 pixels.
defaults write com.apple.dock tilesize -int 38 && killall Dock

# Put the Dock on the right of the screen
defaults write com.apple.dock orientation -string right && killall Dock

#Autohide the Dock when the mouse is out
defaults write com.apple.dock autohide -bool true && killall Dock

# Keep folders on top
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true && killall Finder

# Repeats the key as long as it is held down.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool true

# Spring loading is enabled for Dock items.
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true && killall Dock

# echo Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# disable show recent
defaults write com.apple.dock show-recents -bool FALSE
defaults write NSGlobalDomain NSRecentDocumentsLimit 0
defaults write -g NSNavRecentPlacesLimit -int 0

# Set the menu bar to turn black in dark mode
# defaults write com.apple.universalaccess reduceTransparency 1

# Set location to save screenshots
mkdir ~/Desktop/Screenshots/
defaults write com.apple.screencapture location ~/Desktop/Screenshots/

# Enable night shift from sunset to sunrise
defaults write com.apple.CoreBrightness NightShiftSchedule -dict Enabled -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable smart quotes as it’s annoying for messages that contain code
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add automaticQuoteSubstitutionEnabled -bool false

# increase keyboard velocity (TODO: NEEDS SYSTEM RESTART)
defaults write -g InitialKeyRepeat -int 11 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# system will sleep after x minutes of inactivity
pmset sleep 90

# display will sleep after x minutes of inactivity
pmset displaysleep 60

# Restart automatically if the computer freezes
if [[  = true ]]; then
  systemsetup -setrestartfreeze on
fi

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

