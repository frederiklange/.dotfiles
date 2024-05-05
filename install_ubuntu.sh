# update and upgrade + essential built tools
sudo apt update && sudo apt upgrade
sudo apt-get install build-essential procps curl file git

# install wslu
sudo apt install wslu

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# added homebrew to PATH and to bash shell rcfile
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/frederik-lange/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install packages
brew install gcc
brew install git
brew install zsh
brew install starship
brew install fzf
brew install ripgrep
brew install neovim
brew install unzip
brew install tmux # may come as a defaul in some ubuntu version
brew install stow
brew install gh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# stow
stow zsh
stow starship
stow tmux
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER


