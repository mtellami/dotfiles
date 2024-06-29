return {
  "catppuccin/nvim",
  priorety = 100,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
    })

    vim.cmd("colorscheme catppuccin")
  end
}
