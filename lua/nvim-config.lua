vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' ' -- Set the leader key to Space

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Enable auto-indentation
vim.o.smartindent = true

-- Have scroll offset
vim.o.scrolloff = 16

-- Enable line numbers
vim.api.nvim_exec([[set number]], true)

-- Enable relative line numbers
vim.api.nvim_exec([[set relativenumber]], true)

