#!/bin/bash
defaults write -g ApplePressAndHoldEnabled -bool false

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

echo "Restart might be needed to apply these changes"
