-- Clear search
vim.api.nvim_create_user_command(
  'C',
  function()
    vim.cmd("let @/=''")
  end,
  {}
)

-- Better exit from Insert Mode
vim.keymap.set('i', 'ii', '<Esc>')

-- Switch to Upper Case
vim.keymap.set('i', '<C-u>', '<ESC>lviwUi')
vim.keymap.set('n', '<C-u>', 'viwU<Esc>')

-- Switch to Lower Case
vim.keymap.set('i', '<M-u>', '<Esc>lviwui')
vim.keymap.set('n', '<M-u>', 'viwu<Esc>')

-- Toggle Case
vim.keymap.set('i', '<C-s>', '<ESC>lviw~i')
vim.keymap.set('n', '<C-s>', 'viw~<Esc>')

-- Alt + hjkl to resize windows
vim.keymap.set('n', '<M-j>', ':resize -2<CR>', { silent = true })
vim.keymap.set('n', '<M-k>', ':resize +2<CR>', { silent = true })
vim.keymap.set('n', '<M-h>', ':vertical resize -2<CR>', { silent = true })
vim.keymap.set('n', '<M-l>', ':vertical resize +2<CR>', { silent = true })

-- Better tabbing
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<leader>v', ':vsp<CR>', { silent = true })
vim.keymap.set('n', '<leader>s', ':sp<CR>', { silent = true })

-- Better Replace Commands
vim.keymap.set('n', '<leader>R', function() Replace("gci") end)
vim.keymap.set('n', '<leader>IR', function() Replace("gcI") end)

function Replace(flags)
  local current_word = vim.fn.expand("<cword>")
  local command = string.format(':%s/%s//%s', '%s', current_word, flags)

  vim.api.nvim_feedkeys(command, 'n', false)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Left><Left><Left><Left>', true, true, true), 'n', false)
end

