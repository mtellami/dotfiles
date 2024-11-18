return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      offsets = {
        {
          filetype = "NvimTree",
          text = "Explorer",
          text_aligh = "center",
          separator = true
        }
      },
      diagnostics = "nvim_lsp",
      modified_icon = "",
      truncate_names = true,
      always_show_bufferline = false,
    },
  },
}

