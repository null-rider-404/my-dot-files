# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =========================================================================
# Oh My Zsh
# =========================================================================

# Path to your oh-my-zsh installation.
export ZSH="/Users/harsh.boricha/.oh-my-zsh"

# Set name of the theme to load.
# Set a different theme to override the Oh My Zsh default.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-update (or set an initial update time to start with).
# DISABLE_AUTO_UPDATE="true"

# You can add more options here if needed, but these are the common ones.

# This is where your plugins are loaded.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
    zsh-z
)

source $ZSH/oh-my-zsh.sh

# =========================================================================
# Powerlevel10k Configuration
# =========================================================================
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# =========================================================================
# Environment Variables & Configuration
# =========================================================================
# Zsh Configuration
export YSU_MESSAGE_POSITION="after"


# =========================================================================
# Aliases
# =========================================================================
# Zsh aliases
alias openzs="open ~/.zshrc"
alias sourcezs="source ~/.zshrc"

# npm aliases
alias nrd="npm run dev"
alias nrb="npm run build"
alias ni="npm install"
alias nu="npm uninstall"
alias nr="npm run"
alias nrp="npm run prisma:studio"

# macOS aliases
alias port="lsof -i"
alias stop="kill -9"
portz() {
  lsof -i :$1
}

# =========================================================================
# Node Version Manager (NVM)
# =========================================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
