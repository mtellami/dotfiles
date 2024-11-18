return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                   ",
      "                                   ",
      "                                   ",
      "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
      "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
      "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
      "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
      "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
      "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
      "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
      " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
      " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
      "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
      "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
      "                                   ",
    }


    -- Set menu
    dashboard.section.buttons.val = {
      -- dashboard.button("n", "   new File", "<cmd>ene<CR>"),
      dashboard.button("f", "󰮗   find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("e", "   file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("t", "   find text", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("r", "󰁯   restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("m", "   mason", "<cmd>Mason<CR>"),
      dashboard.button("l", "󱊍   lazy", "<cmd>Lazy<CR>"),
      dashboard.button("c", "   configuration", "<cmd>edit ~/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "󰛉   quit", "<cmd>qa<CR>"),
    }

    -- set footer
    dashboard.section.footer.val = "by moad tellami"
    -- dashboard.section.footer.opts.hl = "Comment"

    -- Send config to alpha
    require("alpha").setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
