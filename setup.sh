# update
sudo pacman -Syu

# install CLI tools
pacman -S bat eza fzf fd

# neovim requirements
pacman -S neovim ripgrep 

# Setup configurations

## git
if [ -f "$HOME/.gitconfig" ]; then
  mv "$HOME/.gitconfig" "$HOME/.gitconfig_dot_backup"
fi
ln -s "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"

## Zsh
if [ -f "$HOME/.zshrc" ]; then
  mv "$HOME/.zshrc" "$HOME/.zshrc_dot_backup"
fi
ln -s "$HOME/.dotfiles/zsh/init.zsh" "$HOME/.zshrc"

## neovim
if [ -f "$HOME/.config/nvim/init.lua" ]; then
  mv "$HOME/.config/nvim/init.lua" "$HOME/.config/nvim/init_dot_backup.lua"
fi
ln -s "$HOME/.dotfiles/nvim/init.lua" "$HOME/.config/nvim/init.lua"

## to be complited ....
