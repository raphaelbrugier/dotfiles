###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true



###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Set Home as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "Pflo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2


########################################################################################################################
# custom
########################################################################################################################
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/mac/iterm2_profile"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

### Conflicting with IntelliJ keymaps
# Disable ˆ+ <- and ˆ+ -> to move between workspaces with mission control
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 79 "{enabled = 0; value = { parameters = (65535, 123, 8650752); type = standard; }; }"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 80 "{enabled = 0; value = { parameters = (65535, 123, 8781824); type = standard; }; }"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 81 "{enabled = 0; value = { parameters = (65535, 124, 8650752); type = standard; }; }"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 82 "{enabled = 0; value = { parameters = (65535, 124, 8781824); type = standard; }; }"

# prevent the generation of .DS_Store files, need to restart the laptop after
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Allow to quit finder
defaults write com.apple.finder QuitMenuItem -bool true; killall Finder