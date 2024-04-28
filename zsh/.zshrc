# use homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# use startship
eval "$(starship init zsh)"

# use fzf key bindings and completions
eval "$(fzf --zsh)"

# use wslu to acces browser in wsl2 setup
export BROWSER=wslview

# aliases
alias vim="nvim"
