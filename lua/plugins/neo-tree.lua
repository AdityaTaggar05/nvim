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
			"nvim-tree/nvim-web-devicons",
			"s1n7ax/nvim-window-picker",
		},
		config = function()
			require("neo-tree").setup({
				source_selector = {
					winbar = true,
				},
				mappings = {
					["S"] = "split_with_window_picker",
					["s"] = "vsplit_with_window_picker",
				},
				buffers = {
					follow_current_file = {
						leave_dirs_open = true,
					},
				},
				filesystem = {
					follow_current_file = {
						enabled = true,
						leave_dirs_open = true,
					},
				},
				window = {
					mappings = {
						["e"] = function()
							vim.api.nvim_exec("Neotree reveal filesystem left", true)
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
			vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
			vim.keymap.set("n", "<leader>gf", ":Neotree git_status float<CR>", {})
		end,
	},
}
