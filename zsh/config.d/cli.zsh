# CLI configuration

# # Bat
export BAT_THEME="TwoDark"

# Eza

# fzf configuration

# Completion configuration
autoload -Uz compinit
compinit
compdef _ls eza

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# fzf configuration
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"
export FZF_CTRL_T_COMMAND="fd --type=f --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"

_fzf_compgen_path() {
  fd --hidden --exclude .git --exclude node_modules "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git --exclude node_modules "$1"
}

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift
  local dir_preview="eza --tree --color=always {} | head -200"
  local file_preview="bat -n --color=always --line-range :500 {}"

  case "$command" in
    cd)           fzf --preview $dir_preview "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                  "$@" ;;
    *)            fzf --preview "[[ -d {} ]] && $dir_preview || $file_preview" "$@" ;;
  esac
}

alias yt='yt-dlp -o "/home/mtellami/Downloads/videos/%(title)s.%(ext)s"'

# Shell integrations
eval "$(fzf --zsh)"
