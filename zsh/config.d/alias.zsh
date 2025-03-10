# Aliases
alias src="source ~/.zshrc"

# locations
typeset -A __locations
__locations=(
  dev 'Dev'
  dot '.dotfiles'
)
for key in ${(k)__locations}; do
  if [ -d "$HOME/${__locations[$key]}" ]; then
    alias $key="cd $HOME/${__locations[$key]}"
  fi
done
unset __locations

# pacman scripts
__scripts_dir=~/.dotfiles/scripts/pacman
if [ -d "$__scripts_dir" ]; then
  typeset -A __scripts
  __scripts=(
    u 'update'
    i 'install'
  )
  for key in ${(k)__scripts}; do
    alias $key="${__scripts_dir}/${__scripts[$key]}"
  done

  unset __scripts_dir
  unset __scripts
fi

# Display
alias json="python -m json.tool | bat -l json"
alias copy="xclip -selection clipboard"

# eza
alias ls="eza --color=always --icons=always --no-filesize --no-user --no-time --no-permissions --long --git"
alias ll="eza --color=always --icons=always --no-filesize --no-user --no-time --no-permissions"
alias la="eza --color=always --long --git"
alias tree="eza --tree"
alias cat="bat"

# dev alias
if [ -f "$HOME/Dev/dev-alias.zsh" ]; then
  source "$HOME/Dev/dev-alias.zsh"
fi
alias todos='cat /home/mtellami/Home/notes/todos.note.md'
