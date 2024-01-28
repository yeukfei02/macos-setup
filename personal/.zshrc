# zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/donaldwu/.bun/_bun" ] && source "/Users/donaldwu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# conda
export PATH=/opt/homebrew/anaconda3/bin:$PATH

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# go
export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH

# gvm
[[ -s "/Users/donaldwu/.gvm/scripts/gvm" ]] && source "/Users/donaldwu/.gvm/scripts/gvm"

# z for jumping around
source $HOME/z.sh

# alias
alias cat="bat"
alias ls="exa"

# starship
eval "$(starship init zsh)"
