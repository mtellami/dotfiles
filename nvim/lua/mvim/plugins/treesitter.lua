return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "lua", "vim", "java", "html" },
      auto_install = true,
      highlight = {
        enable = true,
      },
    })
    vim.cmd [[
      autocmd BufNewFile,BufRead *.tmux.conf set filetype=tmux
    ]]
  end
}
