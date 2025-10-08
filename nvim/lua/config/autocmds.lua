local set = vim.opt

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    set.autoindent = true
    set.smartindent = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dart",
  callback = function()
    -- vim.opt_local.commentstring = "// %s"
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
    set.colorcolumn = "120"
  end,
})
