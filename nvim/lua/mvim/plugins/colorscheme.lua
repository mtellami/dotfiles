return {
  {
    "catppuccin/nvim",
    priorety = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })

      vim.cmd("colorscheme catppuccin")
    end
  },

  -- Gruvbox colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "soft",
        palette_overrides = {
          bright_green = "#b8bb26",
        },
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
  },

  -- Tokyonight colorscheme
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
      })
      -- vim.cmd("colorscheme tokyonight")
    end,
  },

  -- Dracula colorscheme
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
        italic_comment = true,
      })
      -- vim.cmd("colorscheme dracula")
    end,
  },

  -- Nord colorscheme
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      -- vim.cmd("colorscheme nord")
    end,
  },
}
