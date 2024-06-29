return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local lualine = require("lualine")
    local components = {
      mode = {
        function() return "󰓾" end,
      },
      diagnostics = {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
      }
    }

    lualine.setup({
      options = {
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "alpha" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { components.mode },
        lualine_b = { "branch" },
        lualine_c = { "diff" },
        lualine_x = { components.diagnostics, "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      tabline = {},
      winbar = {},
      extensions = {},
    })
  end,
}

