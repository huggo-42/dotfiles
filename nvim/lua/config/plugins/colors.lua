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
      vim.cmd.colorscheme('gruvbox')
      -- vim.cmd.colorscheme('naysayer')
      -- vim.cmd.colorscheme('rosepine')
      vim.cmd.colorscheme('oggu')
      -- vim.opt.background = 'light'
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "#181818" })
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
}
