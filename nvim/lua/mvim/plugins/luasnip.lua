return {
	"L3MON4D3/LuaSnip",
  version = nil,
  branch = "master",
  config = function()
    require("luasnip").filetype_extend("typescript", { "javascript" })
    require("luasnip.loaders.from_vscode").lazy_load()
    require("mvim.plugins.snippets.snippets")
  end,
}
