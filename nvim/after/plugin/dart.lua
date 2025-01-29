-- Set up LSP for Dart
if vim.fn.executable("dart") == 1 then
	require("lspconfig").dartls.setup({
	})

	vim.cmd[[nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>]]
	vim.cmd[[nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>]]
end
