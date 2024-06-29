# Prompt configuration

## Get cwd branch
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

# run before every prompt
precmd() { vcs_info }

branch() {
  if [ -z $vcs_info_msg_0_ ]; then
    echo ""
  else
    echo "%F{green}  $vcs_info_msg_0_%f |"
  fi
}

prompt_symbol() {
  if [ $? -eq 0 ]; then
    echo "%F{blue} %f"
  else
    echo "%F{red} %f"
  fi
}

# Define Prompt
PROMPT='$(prompt_symbol)'
RPROMPT='$(branch)   %2~ |   %*%f'

