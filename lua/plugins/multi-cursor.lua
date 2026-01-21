return {
	"mg979/vim-visual-multi",
	init = function()
		vim.g.VM_default_mappings = -1
		vim.g.VM_maps = {
			["Find Under"] = "<C-d>",
			["Find Subword Under"] = "<C-d>",
			["Select All"] = "<M-d>",
		}
	end,
}
