#!/bin/sh

# Extensions & utilities See notes for descriptions
echo "Installing Apps via Brew..."
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
brew install git-delta

# Common Apps
brew install --cask iterm2
brew install --cask todoist
brew install --cask visual-studio-code
brew install --cask logi-options-plus
brew install --cask 1password-cli
brew install --cask obsidian
brew install --cask bruno
brew install --cask logitune
brew install --cask font-powerline-symbols
# brew install --cask 1password
# brew install --cask microsoft-remote-desktop
# brew install wireguard-tools

# Work Apps

# Personal Apps
# brew install --cask slack
# brew install --cask google-drive
# brew install --cask focusrite-control
# brew install --cask fl-studio
# brew install --cask steam
# brew install --cask cryptomator

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
# setup zsh enviroment
sudo rm ~/.zshrc
sudo ln -s ~/dotfiles/.zshrc ~/.zshrc
# set default shell to zsh
chsh -s $(which zsh)

# setup iterm2
# Point iTerm2 to your transferred preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/dotfiles/iterm2"
# Instruct iTerm2 to load from that custom folder
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# Set git
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig

# Set finder settings
# Show dot files in finder
defaults write com.apple.finder AppleShowAllFiles true


mdcat ~/dotfiles/post_install.md
