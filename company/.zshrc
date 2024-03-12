# zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# homebrew
export PATH="/opt/homebrew/sbin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv
eval "$(rbenv init -)"

# pipx
export PATH="$PATH:/Users/donaldwu/.local/bin"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# gvm
source /Users/yeuk.fei.wu/.gvm/scripts/gvm

# z for jumping around
source $HOME/z.sh

# alias
alias cat="bat"
alias ls="exa"

# starship
eval "$(starship init zsh)"
