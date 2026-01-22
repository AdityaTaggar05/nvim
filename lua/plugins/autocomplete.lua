return {
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			luasnip.config.setup({})

			require("luasnip.loaders.from_lua").lazy_load({
				paths = vim.fn.stdpath("config") .. "/lua/snippets",
			})

			cmp.setup({
				preselect = cmp.PreselectMode.Item,
				completion = {
					completeopt = "menu,menuone",
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					documentation = {
						border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
					},
					completion = {
						border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
					},
				},
				mapping = cmp.mapping.preset.insert({
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-u>"] = cmp.mapping.scroll_docs(4),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				}, {
					{ name = "buffer" },
				}),
			})

			-- Use buffer source for `/` and `?`
			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})

			-- Use cmdline & path source for ':'
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "path" },
				}, {
					{ name = "cmdline" },
				}),
			})
		end,
	},
}
