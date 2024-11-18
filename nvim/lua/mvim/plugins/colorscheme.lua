return {
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
}
