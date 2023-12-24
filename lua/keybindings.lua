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


-- tabs-line keybinds
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-a>', ':BufferPrevious<CR>', opts)
map('n', '<C-d>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

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
vim.keymap.set('n', '<C-e>', ':qa<CR>', {})
vim.keymap.set('n', '<C-q>', ':q<CR>', {})
