--local cmd = vim.cmd

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Help
local help_group = augroup('Help', { clear = true })
---- Open help pane on the right using :Help
autocmd("CmdlineEnter", {
  command = "command! Help :vert help",
  group = help_group
})

---- windows to close with "Esc" or "q"
autocmd("FileType", {
  pattern = { "help", "lspinfo", "netrw", "startuptime", "qf" }, 
  command = [[
    nnoremap <buffer><silent> q :close<CR>
    nnoremap <buffer><silent> <Esc> :close<CR>
  ]],
  group = help_group
})

---- disable cursor lines
autocmd("FileType", {
  pattern = { "help", "lspinfo", "netrw", "startuptime", "qf" }, 
  command = "setlocal nocursorcolumn nocursorline",
  group = help_group
})

-- Terminal settings
local terminal_group = augroup('Term', { clear = true })
---- Open a terminal pane on the right using :Term
autocmd("CmdlineEnter", {
  command = "command! Term :botright vsplit term://$SHELL",
  group = terminal_group
})

---- ESC ESC to exit insert mode
autocmd("TermOpen", {
  command = [[
    tnoremap <buffer> <Esc><Esc> <c-\><c-n>
  ]],
  group = terminal_group
})

----  Terminal UI
autocmd("TermOpen", {
  command = "setlocal listchars= nocursorline nonumber norelativenumber nospell signcolumn=no",
  group = terminal_group
})

---- Enter insert mode when starting terminal
autocmd("TermOpen", {
  command = "startinsert",
  group = terminal_group,
})

---- These two fucntions should probably be merged.
---- Enter insert mode when switching to terminal in a split
autocmd("TermOpen", {
  command = [[nnoremap <buffer><LeftRelease> <LeftRelease>i]],
  group = terminal_group
})

---- TermClose is to auto hit key to remove [Process exited 0] on exit
autocmd("TermClose", {
  command = "call feedkeys('i')",
  group = terminal_group
})

--cmd [[
--  autocmd TermOpen * setlocal listchars= nocursorcolumn nocursorline nonumber norelativenumber signcolumn=no
--  autocmd TermOpen * startinsert
--  autocmd TermClose * call feedkeys("i")
--]]

-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o"
})

-- Spellchecking
---- move to word ctrl+x then s

-- Enable spell checking for certain file types
autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text" },
  command = "setlocal spell"
})

-- Highlight on yank
--local yankGrp = augroup("YankHighlight", { clear = true })
--autocmd("TextYankPost", {
--  command = "silent! lua vim.highlight.on_yank({timeout=3000})",
--  group = yankGrp,
--})
local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({timeout=3000})
  end,
  group = highlight_group,
  pattern = '*',
})

