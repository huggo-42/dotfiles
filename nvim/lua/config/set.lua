local set = vim.opt

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.nu = true
set.relativenumber = true

set.wrap = false
set.colorcolumn = "80"

set.ignorecase = true
set.hlsearch = false
set.incsearch = true

set.autoindent = true
set.shiftwidth = 4

set.termguicolors = true

set.scrolloff = 4


set.cursorline = true

vim.keymap.set("n", "<leader>jq", vim.cmd.JqPlayground)
