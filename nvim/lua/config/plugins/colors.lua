return {
  {
    "folke/tokyonight.nvim",
    config = function()
      -- vim.cmd.colorscheme "tokyonight"
    end
  },
  {
    'RostislavArts/naysayer.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      -- vim.cmd.colorscheme('oggu')
      vim.cmd.colorscheme('rosepine')
      -- vim.cmd.colorscheme('naysayer')
      -- vim.cmd.colorscheme('gruvbox')
      -- vim.opt.background = 'light'
    end,
  },
}
