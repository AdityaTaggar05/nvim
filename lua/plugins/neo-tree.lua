return {
	{
		"skardyy/neo-img",
		build = ":NeoImg Install",
		config = function()
			require("neo-img").setup()
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
			"s1n7ax/nvim-window-picker", -- or "s1n7ax/nvim-window-picker"
		},
		config = function()
			require("neo-tree").setup({
				source_selector = {
					winbar = true,
				},
				window = {
					mappings = {
						["e"] = function()
							vim.api.nvim_exec("Neotree focus filesystem left", true)
						end,
					},
				},
				default_component_configs = {
					indent = {
						with_expanders = true,
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
				},
				event_handlers = {
					{
						event = "file_open_requested",
						handler = function()
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
			})
			vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})
			vim.keymap.set("n", "<leader>gf", ":Neotree git_status float<CR>", {})
		end,
	},
}
