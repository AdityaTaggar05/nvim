return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-ui-select.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			extensions = {
				["ui-select"] = {},
				file_browser = {
					hijack_netrw = true,
				},
			},
		})

		-- Load extensions
		telescope.load_extension("ui-select")
		telescope.load_extension("file_browser")

		-- Keymaps
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		vim.keymap.set("n", "<leader>fb", function()
			telescope.extensions.file_browser.file_browser({}, { desc = "File Browser" })
		end)
	end,
}
