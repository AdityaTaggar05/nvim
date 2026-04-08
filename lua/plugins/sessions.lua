return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>sr", "<cmd>AutoSession search<CR>", desc = "Session search" },
		{ "<leader>ss", "<cmd>AutoSession save<CR>", desc = "Save session" },
		{ "<leader>st", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
	},
	init = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		git_use_branch_name = true,
		auto_delete_empty_sessions = true,
	},
}
