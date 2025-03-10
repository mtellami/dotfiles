####################################################################
#                                                                  #
#   Copyright (C) 2024-2025 Moad Tellami <moadtell@gmail.com>      #
#                                                                  #
#   Zsh Configuration file                                         #
#                                                                  #
####################################################################

# Global configuration
export LOCAL_PATH="$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin:$LOCAL_PATH:$HOME/jpm/bin:$HOME/go/bin:$HOME/flutter/bin"

unset LD_PRELOAD
set -o vi

# Load configuration files
for config in ~/.config/zsh/config.d/*.zsh; do
  source $config
done
