#!/bin/sh
# Change TTL to 65
# sudo bash -c "echo net.inet.ip.ttl=65 >> /etc/sysctl.conf"
# Homebrew Script for OSX setup
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
# Extensions & utilities
brew install tig
brew install mdcat
brew install python3
brew install python
brew install pipenv
# brew install iperf
# brew install iperf3
brew install openssl
brew install wget
brew install bmon
# brew install wireshark
brew install fzf
brew install fx
brew install bat
brew install stats
# Cask Utilities
# brew cask install iterm2
# Terriform install
# brew tap hashicorp/tap
# brew install hashicorp/tap/terraform
# Cask Apps
# brew cask install 1password
# brew cask install muzzle
# brew cask install sublime-text
# brew cask install tunnelblick
# brew cask install google-chrome
# brew cask install postman
# brew cask install cryptomator
# brew cask install wireshark
# brew cask install todoist
brew install --cask adobe-acrobat-reader
brew install --cask angry-ip-scanner
# brew cask install vmware-remote-console
brew install --cask  onyx
brew install --cask  java
brew install --cask  visual-studio-code
# brew cask install telegram
# Need to actually run the script to install aliases/keybindings
/usr/local/opt/fzf/install
# VS Code
# Need to open VS Code so the symlinks can be created (Code folder won't exist yet)
# code
# Install VS Code Extensions
# code --install-extension davidanson.vscode-markdownlint
# code --install-extension eamodio.gitlens
# code --install-extension pkief.material-icon-theme
# code --install-extension zhuangtongfa.material-theme
# code --install-extension zhuangtongfa.one-dark-pro
# code --install-extension dotjoshjohnson.xml
# code --install-extension ecmel.vscode-html-css
# code --install-extension mechatroner.rainbow-csv
# code --install-extension ms-azuretools.vscode-docker-0.8.1
# code --install-extension ms-python.python
# code --install-extension ms-vscode.powershell
# code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools-1.0.4
# code --install-extension redhat.vscode-yaml-0.5.3
# code --install-extension coenraads.bracket-pair-colorizer
# code --install-extension yzhang.markdown-all-in-one
# code --install-extension pkief.material-icon-theme
# code --install-extension zhuangtongfa.material-theme
# code --install-extension zhuangtongfa.one-dark-pro
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
