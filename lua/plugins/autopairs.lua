return {
	-- For the legendary Fly Mode
	--{
	--"jiangmiao/auto-pairs",
	--event = "InsertEnter",
	--config = function()
	--vim.g.AutoPairsFlyMode = 1
	--vim.g.AutoPairsShortcutFastWrap = ""
	--end,
	--},
	-- For the beautiful Fast Wrap implementation
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({
				fast_wrap = {},
			})

			local ok, cmp = pcall(require, "cmp")
			if ok then
				local cmp_autopairs = require("nvim-autopairs.completion.cmp")
				cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
			end
		end,
	},
}
