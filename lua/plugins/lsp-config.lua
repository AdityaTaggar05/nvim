return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = { "golangci-lint", "gomodifytags", "impl", "goimports", "gofumpt" },
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "stylua" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local on_attach = require("plugins.lsp-config").on_attach

			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.config("clangd", { capabilities = capabilities })

			vim.lsp.config("gopls", {
				on_attach = on_attach,
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				settings = {
					gopls = {
						analyses = {
							unreachable = true,
							nilness = true,
							unusedparams = true,
							useany = true,
							unusedwrite = true,
							ST1003 = true,
							undeclaredname = true,
							fillreturns = true,
							nonewvars = true,
							fieldalignment = false,
							shadow = true,
						},
						codelenses = {
							generate = true, -- show the `go generate` lens.
							gc_details = true, -- Show a code lens toggling the display of gc's choices.
							test = true,
							tidy = true,
							vendor = true,
							regenerate_cgo = true,
							upgrade_dependency = true,
						},
						hints = {
							assignVariableTypes = true,
							compositeLiteralFields = true,
							compositeLiteralTypes = true,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = true,
							rangeVariableTypes = true,
						},
						usePlaceholders = true,
						completeUnimported = true,
						matcher = "Fuzzy",
						diagnosticsDelay = "500ms",
						symbolMatcher = "fuzzy",
						semanticTokens = false, -- either enable semantic tokens or use treesitter
					},
				},
			})

			vim.diagnostic.config({
				virtual_text = true,
			})
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(_)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
					vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
					vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
				end,
			})
		end,
	},
}
