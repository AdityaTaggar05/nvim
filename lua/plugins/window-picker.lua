return {
	"s1n7ax/nvim-window-picker",
	name = "window-picker",
	config = function()
		vim.keymap.set("n", "<leader>w", function()
			local win = require("window-picker").pick_window()
			if win then
				vim.api.nvim_set_current_win(win)
			end
		end, { desc = "Pick window" })

		require("window-picker").setup({
			hint = "floating-big-letter",
			filter_rules = {
				autoselect_one = false,
				include_current_win = true,
				bo = {
					filetype = { "neo-tree", "neo-tree-popup", "notify" },
					buftype = { "terminal", "quickfix" },
				},
			},
		})
	end,
}
