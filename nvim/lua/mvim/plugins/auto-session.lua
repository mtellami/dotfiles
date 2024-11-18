return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Dev', '~/Dev/work' },
    auto_restore_enabled = false,
    auto_session_enabled = true,
    bypass_session_save_file_types = {
      "alpha"
    },
  }
}
