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
echo Install Core Apps
# brew cask install alfred
brew cask install dropbox
brew cask install little-snitch
brew cask install vlc
brew cask install iterm2
brew cask install daisydisk
brew cask install whatsapp
brew cask install spotify
brew cask install spotify-notifications
brew cask install google-chrome
brew cask install sublime-text
brew cask install atom
brew cask install istat-menus
brew cask install 1password

# Réseau & Dev
brew install git
brew install vim
brew install visual-studio-code
brew cask install wireshark-chmodbpf
brew cask install royal-tsx

# cleanup
brew cleanup --force
brew cask cleanup --force
rm -f -r /Library/Caches/Homebrew/*