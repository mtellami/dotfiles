# keybindings
bindkey '^j' history-search-backward
bindkey '^k' history-search-forward
bindkey '^v' vi-cmd-mode

# function run_lazygit() {
#     lazygit
# }
# zle -N run_lazygit
# bindkey '^G' run_lazygit

# Define the zle widget
# git_status_widget() {
#   zle -I # Invalidate current input to clear the prompt
#   zle -U "git status" # Insert the command into the buffer
#   zle accept-line # Execute the command
# }
# zle -N git_status_widget # Create the widget

# # Bind CTRL-g followed by s to the git_status_widget
# bindkey '^g' git_status_widget





# MAN
#
## Builtins

# CTRL-u delete prompt input

## fzf-git keybindings

# CTRL-G CTRL-F for Files
# CTRL-G CTRL-B for Branches
# CTRL-G CTRL-T for Tags
# CTRL-G CTRL-R for Remotes
# CTRL-G CTRL-H for commit Hashes
# CTRL-G CTRL-S for Stashes
# CTRL-G CTRL-L for reflogs
# CTRL-G CTRL-W for Worktrees
# CTRL-G CTRL-E for Each ref (git for-each-ref)

