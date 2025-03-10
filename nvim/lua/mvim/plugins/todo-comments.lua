return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
   require("todo-comments").setup()
  end

  -- INFO: (info, note)
  -- PERF: (perf, optim, performance, optimize)
  -- HACK: hmmm, this looks a bit funky
  -- TODO: what else?
  -- FIX: (fix, bug)
  -- WARNING: (warning, xxx)
  -- TEST: (testing, passed, failed)
}
