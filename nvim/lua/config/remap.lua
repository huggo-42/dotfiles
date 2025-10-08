vim.g.mapleader = " "

-- String replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Copy and paste
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Panes
vim.keymap.set("n", "<leader>sh", "<cmd>:sp<CR>");
vim.keymap.set("n", "<leader>sv", "<cmd>:vsp<CR>");

-- Oil
vim.keymap.set("n", "<leader>oh", "<cmd>:sp<CR><cmd>Oil<CR>");
vim.keymap.set("n", "<leader>ov", "<cmd>:vsp<CR><cmd>Oil<CR>");
vim.keymap.set("n", "<leader>oo", ":Oil<CR>", { noremap = true, silent = true })

-- LSP
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.document_symbol() end)
vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>lrf", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>ca", "<cmd>:lua vim.lsp.buf.code_action()<CR>");

--- Lsp Errors
vim.opt.signcolumn = "yes:1"

vim.keymap.set('n', '<leader>eo', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ep', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>en', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ee', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>et', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })

-- Lua source
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Quickfix list
vim.keymap.set("n", "<M-n>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-p>", "<cmd>cprev<CR>")

-- Git
vim.keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { noremap = true, silent = true })
