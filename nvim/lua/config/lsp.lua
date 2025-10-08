vim.lsp.enable('lua')
vim.lsp.enable('dartls')
vim.lsp.enable('htmlls')
vim.lsp.enable('tsserver')
vim.lsp.enable('jsonls')
vim.lsp.enable('php')
vim.lsp.enable('clangd')
vim.lsp.enable('go')
vim.lsp.enable('rust_analyzer')

vim.keymap.set("n", "<leader>ff", function() vim.lsp.buf.format() end)

vim.diagnostic.enable = true
if false then
  vim.diagnostic.config({ virtual_lines = true })
end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    if client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end
      })
    end
  end,
})
