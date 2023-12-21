-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- neo-tree keybinds
vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle left<CR>', {})
vim.keymap.set('i', '<C-b>', '<Esc>:Neotree filesystem toggle left<CR>i', {})

vim.keymap.set('n', '<A-b>', ':Neotree focus<CR>', {})
vim.keymap.set('i', '<A-b>', '<Esc>:Neotree focus<CR>i', {})

-- ====================
--   CUSTOM SHORTCUTS
-- ====================

-- Move current line up on Alt+Up in both normal and insert modes
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Up>', '<Esc>:m .-2<CR>i', { noremap = true, silent = true })

-- Move current line down on Alt+Down in both normal and insert modes
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Down>', '<Esc>:m .+1<CR>i', { noremap = true, silent = true })

-- Save the current file on Ctrl+S in both normal and insert modes
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>i', { noremap = true, silent = true })

-- format code
vim.keymap.set('n', '<C-A-j>', [[:normal! m'<Bar>gg=G<Bar>'`<CR>]], {})
vim.keymap.set('i', '<C-A-j>', '<Esc>:normal! m\'<Bar>gg=G<Bar>\'`<CR>i', {})

-- quit nvim
vim.keymap.set('n', '<C-q>', ':qa<CR>', {})
