#!/bin/sh
# Change TTL to 65
# sudo bash -c "echo net.inet.ip.ttl=65 >> /etc/sysctl.conf"
# Homebrew Script for OSX setup
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Extensions & utilities See notes for descriptions
brew install tig
brew install mdcat
brew install python3
brew install python
brew install pipenv
brew install openssl
brew install wget
brew install bmon
brew install fx
brew install bat
brew install stats
# Common Apps
brew install --cask hiddenbar 
brew install --cask iterm2
brew install --cask todoist
brew install --cask 1password
brew install --cask adobe-acrobat-reader
brew install --cask onyx
brew install --cask java
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask logi-options-plus
brew install wireguard-tools
brew install --cask slack
brew install --cask 1password-cli
brew install --cask microsoft-remote-desktop
# Work Apps
brew install --cask logitune
# Personal Apps
brew install --cask focusrite-control
brew install --cask fl-studio
brew install --cask steam
brew install --cask cryptomator
# Special Install Apps
# brew install --cask postman
# brew install --cask wireshark
# brew install --cask angry-ip-scanner
# brew install --cask vmware-remote-console
# brew install --cask inssider
# brew install iperf
# brew install iperf3
# brew install wireshark

# setup ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
# Install ZSH Plugins
# ZSH Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Setup Spaceship theme
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
sudo ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme
# Setup powerline fonts
sudo git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
sudo rm -rf fonts
# echo "Pulling dot files"
# sudo git clone ssh://admin@192.168.0.25/volume1/git/dotfiles ~/dotfiles
# setup zsh enviroment
sudo rm ~/.zshrc
sudo ln -s ~/dotfiles/.zshrc ~/.zshrc
# setup iterm2
sudo rm ~/.iterm2_profile
sudo ln -s ~/dotfiles/.iterm2_profile ~/.iterm2_profile
# setup ssh
sudo cp  ~/dotfiles/.ssh/config /.ssh/
sudo chmod 600 ~/.ssh/config
# set default shell to zsh
chsh -s $(which zsh)
mdcat ~/dotfiles/post_install.md