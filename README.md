# ws-config
Use this repo to either copy your current work station setup or to set a new work station up from scratch. Built for MAC OS. Set up a new work station via
```bash
sh setup_all.sh
```
Copy current setup via
```bash
sh consolidate.sh
```

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
You can also install zsh plugins via homebrew. Sourcing in .zshrc is then different. In case that installation of Meslo Nerd Font was accidentally canceled, it can be downloaded and manually installed
here: https://github.com/romkatv/powerlevel10k/blob/master/font.md. Instructions can be found under 3. first bullet point.

## iterm2 customization
```bash
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors
```
Will be added to Downloads folder. To activate, go to iterm2 > Preferences > Profiles > Colors > Import > Select imported profile

## VS Code customization

```bash
rm /Users/Jannes/Library/Application\ Support/Code/User/settings.json && cp settings.json /Users/Jannes/Library/Application\ Support/Code/User     
```
Path has to be adjusted.

# Python setup

## Managed by homebrew

```bash
brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init --path)"\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
```
```bash
brew install pipx
pipx ensurepath
```

## Managed py other pms

```bash
pyenv install <version nunber>
pipx install poetry
```

## Set up poetry

```bash
poetry self add poetry-dotenv-plugin
poetry self add ipython
config virtualenvs.in-project true
```