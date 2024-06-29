####################################################################
#                                                                  #
#   Copyright (C) 2024-2025 Moad Tellami <moadtell@gmail.com>      #
#                                                                  #
#   Zsh Configuration file                                         #
#                                                                  #
####################################################################

# Global configuration
export LOCAL_PATH="$HOME/.local/bin"
export PATH="$LOCAL_PATH:$PATH"

unset LD_PRELOAD
set -o vi

# Load configuration files
for config in ~/.config/zsh/config.d/*.zsh; do
  source $config
done

# Load Angular CLI autocompletion.
source <(ng completion script)
