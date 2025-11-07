# Created by newuser for 5.9
export PATH=$HOME/.local/bin:$PATH

# Pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Vi Mode
bindkey -v

# Autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# NVM
source /usr/share/nvm/init-nvm.sh

# pnpm
export PNPM_HOME="/home/iachilo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# ZOxide
eval "$(zoxide init zsh)"

# Android
export ANDROID_HOME=$HOME/.android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Obsidian
alias osr="rclone sync ~/Documents/Vault/ google:/Documents/Obsidian/Vault/ --verbose"
alias osl="rclone sync google:/Documents/Obsidian/Vault/ ~/Documents/Vault/ --verbose"
