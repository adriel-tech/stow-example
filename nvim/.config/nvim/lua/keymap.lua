local command   = vim.api.nvim_create_user_command
local keymap    = vim.api.nvim_set_keymap
local opt       = vim.opt

-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Mistypes
command('W',  'w',  {})
command('Wq', 'wq', {})
command('WQ', 'wq', {})
command('Q',  'q',  {})
command('Qa', 'qa', {})
command('Q1', 'q!', {})

-- Ctrl + q to quit without saving
keymap('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })

-- Disable accidentally pressing ctrl-z and suspending
keymap('n', '<C-z>', '<Nop>', { noremap = true, silent = true })

-- ESC to turn off search highlighting
keymap('n', '<esc>', ':noh<CR>', { noremap = true, silent = true })

-- Reload config, this does not work.
--keymap('n', '<leader>r', ':luafile $MYVIMRC<CR>', {noremap = true, silent = false})

-- Splits
keymap('n', '<leader>-', ':split<CR>',  { noremap = true, silent = true })
keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true, silent = true })

-- clear view
keymap('n', '<leader>c', ':set number!<CR>:set list!<CR>', { noremap = true, silent = true })

-- Term split
keymap('n', '<leader>t', ':Term<CR>', { noremap = true, silent = true })

-- Open netrw file explorer
-- :Vexplore opens on left, :Vexplore! opens on right, silent hack for cmdheight=0
keymap('n', '<leader>o', ':silent Vexplore!<CR>', { noremap = true, silent = true })

-- Toggle wordwrap
keymap('n', '<leader>w', ':set wrap!<CR>', { noremap = true, silent = true })

-- Arrow keys
keymap('i', '<C-up>',   '<PageUp>',   { noremap = true })
keymap('i', '<C-down>', '<PageDown>', { noremap = true })
keymap('n', '<C-up>',   '<PageUp>',   { noremap = true })
keymap('n', '<C-down>', '<PageDown>', { noremap = true })
keymap('i', '<S-up>',   '<C-o>[[',    { noremap = true })
keymap('i', '<S-down>', '<C-o>]]',    { noremap = true })
keymap('n', '<S-up>',   '[[',         { noremap = true })
keymap('n', '<S-down>', ']]',         { noremap = true })

---- Completions
------ Command mode
keymap('c', '<up>', 'pumvisible() ? "\\<c-p>" : "\\<up>"' ,        { noremap = true, expr = true })
keymap('c', '<down>', 'pumvisible() ? "\\<c-n>" : "\\<down>"' ,    { noremap = true, expr = true })
keymap('c', '<left>', 'pumvisible() ? "\\<up>" : "\\<left>"' ,     { noremap = true, expr = true })
keymap('c', '<right>', 'pumvisible() ? "\\<down>" : "\\<right>"' , { noremap = true, expr = true })
------ Not sure if I need wildmenumode. atm seems useless
keymap('c', '<up>', 'wildmenumode() ? "\\<c-p>" : "\\<up>"' ,        { noremap = true, expr=true })
keymap('c', '<down>', 'wildmenumode() ? "\\<c-n>" : "\\<down>"' ,    { noremap = true, expr=true })
keymap('c', '<left>', 'wildmenumode() ? "\\<up>" : "\\<left>"' ,     { noremap = true, expr=true })
keymap('c', '<right>', 'wildmenumode() ? "\\<down>" : "\\<right>"' , { noremap = true, expr=true })
----- Insert mode
--keymap('i', '<up>', 'pumvisible() ? "\\<c-p>" : "\\<up>"' , { noremap = true, expr=true })
--keymap('i', '<down>', 'pumvisible() ? "\\<c-n>" : "\\<down>"' , { noremap = true, expr=true })
--keymap('i', '<left>', 'pumvisible() ? "\\<up>" : "\\<left>"' , { noremap = true, expr=true })
--keymap('i', '<right>', 'pumvisible() ? "\\<down>" : "\\<right>"' , { noremap = true, expr=true })

-- Edit related keymaps
---- Ctrl+Backspace to delete word:
keymap('i', '<C-H>', '<C-W>', { noremap = true })
keymap('n', '<C-H>', 'diw',   { noremap = true })

---- Ctrl+Backspace to delete word:
keymap('i', '<C-Del>', '<C-o>dw', { noremap = true })
keymap('n', '<C-Del>', 'dw',      { noremap = true })
