#!/usr/bin/env bash
set -e

echo "Setting up Homebrew Cask..."

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install casks
echo "Installing casks..."

casks=(
  1password
  audioslicer
  alfred
  caffeine
  iterm2
  qlvideo
  qlswift
  qlrest
  qladdict
  qlmarkdown
  ql-ansilove
  qlprettypatch  
  qlcolorcode
  qlimagesize
  qlstephen
  quicklook-json
  scriptql
  torrent-file-editor
  webpquicklook
)

for c in ${casks[@]}; do
  brew cask install --appdir="/Applications" $c
done

# Finalize
brew cleanup
