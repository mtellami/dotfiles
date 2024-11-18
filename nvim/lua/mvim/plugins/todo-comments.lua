return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "#000000" },
  },
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
