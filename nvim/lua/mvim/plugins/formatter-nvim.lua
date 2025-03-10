return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = true,
			filetype = {
				javascript = {
					function()
						return {
							exe = vim.fn.stdpath("data") .. "/mason/bin/prettier",
							args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
							stdin = true,
						}
					end,
				},
				typescript = {
					function()
						return {
							exe = vim.fn.stdpath("data") .. "/mason/bin/prettier",
							args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
							stdin = true,
						}
					end,
				},
				java = {
					function()
						return {
							exe = vim.fn.stdpath("data") .. "/mason/bin/google-java-format",
							args = { vim.api.nvim_buf_get_name(0) },
							stdin = true,
						}
					end,
				},
				lua = {
					function()
						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								vim.api.nvim_buf_get_name(0),
								"-",
							},
							stdin = true,
						}
					end,
				},
			},
		})
	end,
}
