return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
      require('neo-tree').setup({
        reveal=true,
      })
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>', {})
      vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', {})
    end,
  }
}
