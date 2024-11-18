return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()

    -- recommanded by nvim-tree
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
      },
      sync_root_with_cwd = false,

      view = {
        width = 35,
        adaptive_size = false
      },
      diagnostics = {
        enable = true,
        show_on_dirs = false,
      },

      actions = {
        open_file = {
          window_picker = {enable = false}
        }
      },

      renderer = {
        root_folder_label = ":t",
        highlight_git = "name",
        icons = {
          glyphs = {git = {unstaged = "", untracked = ""}}
        }
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find current file in tree" })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
  end
}
