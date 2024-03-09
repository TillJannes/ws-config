# ws-config

## hombebrew plus formulae and casks
```bash
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew update
	brew install $(cat brew_formulae.txt)
	brew install --cask $(cat brew_casks.txt)
```

## oh-my-zsh plus plugins
```bash
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins
	git clone https://github.com/marlonrichert/zsh-autocomplete.git $ZSH/plugins
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k	
```
You can also install zsh plugins via homebrew. Sourcing in .zshrc is then different.

## iterm2 customization
```bash
	curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors
```
Will be added to Downloads folder. To activate, go to iterm2 > Preferences > Profiles > Colors > Import > Select imported profile
