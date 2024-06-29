# zinit configuration
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# install zinit if not exist
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# load zinit configuration
source "${ZINIT_HOME}/zinit.zsh"

# add plugins [syntaz-highlighting authocompletion, authsuggestion, fuzzyFinder]

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light junegunn/fzf-git.sh
