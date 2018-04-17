#!/bin/sh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
xcode-select --install

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ffmpeg
brew install htop
brew install iftop
brew install iperf3
brew install tree
brew install wget
brew install whois

brew tap caskroom/cask

# Application globale
echo "Installation des applications principales"
brew cask install dropbox
brew cask install vlc
brew cask install iterm2
brew cask install whatsapp
brew cask install spotify
brew cask install spotify-notifications
brew cask install google-chrome
brew cask install istat-menus
brew cask install 1password
brew cask install cyberduck
brew cask install discord
brew cask install nextcloud
brew cask install the-unarchiver

# Réseau & Dev
echo "Installation des application Réseau & Dév"
brew cask install sublime-text
brew cask install atom
brew install git
brew install vim
brew cask install wireshark
brew cask install royal-tsx

# cleanup
brew cleanup --force
brew cask cleanup --force
rm -f -r /Library/Caches/Homebrew/*
echo Installation terminée
