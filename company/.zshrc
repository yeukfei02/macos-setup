# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

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

# bun completions
[ -s "/Users/yeuk.fei.wu/.bun/_bun" ] && source "/Users/yeuk.fei.wu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bum
export BUM_INSTALL="$HOME/.bum"
export PATH="$BUM_INSTALL/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# pipx
export PATH="$PATH:/Users/yeuk.fei.wu/.local/bin"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# java
export JAVA_HOME=`/usr/libexec/java_home`

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# gvm
source /Users/yeuk.fei.wu/.gvm/scripts/gvm

# gcloud cli
if [ -f '/Users/yeuk.fei.wu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yeuk.fei.wu/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/yeuk.fei.wu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yeuk.fei.wu/google-cloud-sdk/completion.zsh.inc'; fi

# z for jumping around
source $HOME/z.sh

# alias
alias cat="bat"
alias ls="eza"

# starship
eval "$(starship init zsh)"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"