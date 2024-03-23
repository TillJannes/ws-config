# enable powerlevel 10k command prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# manipulate env vars
export PATH="/usr/local/bin/pygmentize /usr/bin/python3 $HOME/.config":$PATH
export ZSH="$HOME/.oh-my-zsh"

#ZSH customization

ZSH_TMUX_AUTOSTART=true
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	tmux
	zsh-autosuggestions 
	zsh-syntax-highlighting 
	zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

# aliases
alias ls="ls -a -G"
alias python="python3.12"
alias git='LANG=en_US git'
alias tmks='tmux kill-session'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# vi mode
bindkey -v
bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

