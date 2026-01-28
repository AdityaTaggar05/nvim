vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cmdheight=2")
vim.cmd("set undofile")
vim.cmd("set rnu")
vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.autochdir = true

vim.opt.swapfile = false
vim.wo.number = true

local undodir = vim.fn.expand(string.sub(vim.env.MYVIMRC, 0, -9) .. "undodir//")
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
end
vim.opt.undodir = vim.fn.expand(undodir)
