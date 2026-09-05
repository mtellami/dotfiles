return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = true,
			filetype = {
				tex = {
					function()
						return {
							exe = "/usr/bin/latexinden",
							args = { "-" },
							stdin = true,
						}
					end,
				},
				sql = {
					function()
						return {
							exe = vim.fn.stdpath("data") .. "/mason/bin/sql-formatter",
							args = { "--language", "postgresql" },
							stdin = true,
						}
					end,
				},
				yaml = {
					function()
						return {
							exe = vim.fn.stdpath("data") .. "/mason/bin/prettier",
							args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
							stdin = true,
						}
					end,
				},
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
