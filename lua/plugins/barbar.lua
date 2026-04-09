return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false

		require("barbar").setup({
			icons = {
				diagnostics = {
					[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
					[vim.diagnostic.severity.WARN] = { enabled = false },
					[vim.diagnostic.severity.INFO] = { enabled = false },
					[vim.diagnostic.severity.HINT] = { enabled = true },
				},
				gitsigns = {
					added = { enabled = true, icon = "+" },
					changed = { enabled = true, icon = "~" },
					deleted = { enabled = true, icon = "-" },
				},
			},
			letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
			semantic_letters = false,
		})

		vim.keymap.set("n", "<TAB>", ":BufferNext<CR>")
		vim.keymap.set("n", "<S-TAB>", ":BufferPrevious<CR>")
		vim.keymap.set("n", "<M-w>", ":BufferClose<CR>")
		vim.keymap.set("n", "<M-K>", ":BufferCloseAllButCurrent<CR>")

		-- Re-order to previous/next
		vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", {})
		vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", {})

		-- Goto buffer in position...
		vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", {})
		vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", {})
		vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", {})
		vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", {})
		vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", {})
		vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", {})
		vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", {})
		vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", {})
		vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", {})
		vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", {})
		vim.keymap.set("n", "<A-p>", "<Cmd>BufferPick<CR>", {})
	end,
	opts = {},
}
