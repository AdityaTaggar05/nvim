return {
	-- For the legendary Fly Mode
	{
		"jiangmiao/auto-pairs",
		event = "InsertEnter",
		config = function()
			vim.g.AutoPairsFlyMode = 1
			vim.g.AutoPairsShortcutFastWrap = ""
		end,
	},
	-- For the beautiful Fast Wrap implementation
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			fast_wrap = {},
		},
	},
}
