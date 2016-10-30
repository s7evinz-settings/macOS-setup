#!/bin/sh

# Install Xcode. Homebrew dependency
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Setup homebrew path
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew doctor
brew update

# Brew CLI apps
# brew install coreutil
brew install zsh zsh-completions
brew install git
brew install vim
brew install fzf
brew install ag

# Setup Git
git config --global user.name "Slevin Zhang"
git config --global user.email "s7evinz@gmail.com"
git config --global credential.helper osxkeychain
git config --global core.editor vim

# Brew Cask
### `brew cask info <package>` to see more info

## Communication
# brew cask install electronic-wechat
brew cask install qq
brew cask install skype
brew cask install slack
brew cask install telegram

## Development
brew cask install android-studio
brew cask install eclipse-java
brew cask install filezilla
brew cask install iterm2
brew cask install java
brew cask install macdown
brew cask install postman
brew cask install sourcetree
brew cask install sublime-text
brew cask install valentina-studio # db management tool
brew cask install visual-studio-code

## Browsers
brew cask install google-chrome

## Cloud Storage
brew cask install dropbox
brew cask install google-drive

## Media
brew cask install spotify
brew cask install vlc

## Utilities
brew cask install alfred
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install coconutbattery
brew cask install keepassx
brew cask install keyboardcleantool
brew cask install selfcontrol
brew cask install transmission

## Quick look Plugins
brew cask install betterzipql
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package
brew cask install webpquicklook

# Oh-My-Zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Node.js managed by n
# n-install https://github.com/mklement0/n-install
curl -L https://git.io/n-install | bash
npm i -g bower
npm i -g yo
npm i -g gulp-cli
npm i -g nodemon
npm i -g typescript

# Symlinks
ln -s ~/Dropbox/settings/Sublime-Text-3 ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/Dropbox/settings/editorconfig/.editorconfig ~/
ln -s ~/Dropbox/settings/gitignore/.gitignore ~/
ln -s ~/Dropbox/settings/oh-my-zsh-custom/aliases.zsh ~/.oh-my-zsh/custom/
ln -s ~/Dropbox/settings/vimrc/.vimrc ~/

# OS Settings
# Make Sublime Text key press repeatable
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
