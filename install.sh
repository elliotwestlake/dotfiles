#!/bin/bash

if [[ $OSTYPE == 'darwin'* ]]; then
   if test ! "$(which xcode-select)"; then
     echo "Installing xcode-select"
     xcode-select --install

		 defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.5 && killall Dock
   fi
fi

# Installing Brew
if test ! "$(which brew)"; then
  echo "Installing Brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
	test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

	if [[ "$OSTYPE" == "linux-gnu"* ]]; then
		 sudo apt-get update
		 sudo apt-get install build-essential
	fi

	test -r ~/.zshrc && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zprofile
	echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zprofile
fi

# Update homebrew recipes
echo "Updating Brew..."
brew update

echo "Brew bundle..."
brew bundle

command -v zsh | sudo tee -a /etc/shells
sudo chsh -s "$(command -v zsh)" "${USER}"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	# Installing ohmyzsh
	export ZSH="$HOME/.oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Install vercel oh-my-zsh theme
	curl https://raw.githubusercontent.com/vercel/zsh-theme/master/vercel.zsh-theme -Lo ~/.oh-my-zsh/custom/themes/vercel.zsh-theme
else 
	echo "Oh My ZSH already installed"
fi


# Copy zsh config
cp .zshrc "$HOME"/.zshrc

echo "Configuring Git..."
git config --global user.name "Elliot Westlake"
git config --global user.email "17042376+wizardels@users.noreply.github.com" 
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
git config --global core.editor "nvim"

# Copy nvim config
rm -rf "$HOME"/.config/nvim
cp -r ./neovim "$HOME"/.config/nvim

echo "Installing packer plugins..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

