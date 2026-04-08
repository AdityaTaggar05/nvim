return {
	"mbbill/undotree",
	config = function()
		-- Only Windows
		--vim.g.undotree_DiffCommand = "FC"

		vim.keymap.set("n", "<leader>u", function()
			vim.cmd.UndotreeToggle()
			vim.cmd.UndotreeFocus()
		end)
	end,
}
