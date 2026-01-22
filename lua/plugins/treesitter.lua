return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup({
				install_dir = vim.fn.stdpath("data") .. "/site",
			})
			require("nvim-treesitter").install({ "go", "lua", "python", "cpp", "html", "css", "javascript", "json" })
			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
				desc = "Try to enable tree-sitter syntax highlighting",
				pattern = "*", -- run on *all* filetypes
				callback = function()
					pcall(function()
						vim.treesitter.start()
					end)
				end,
			})
		end,
	},
}
