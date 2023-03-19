---- 04/10/2022 ----
--0 Useful links
--1 Setup directories and files
--2 Base startup settings
--3 UI
--4 Editor config
--5 Disable/Enable
---- end ----

--0
-- https://neovim.io/doc/user/vim_diff.html
--

local opt                       = vim.opt

--1 Setup directories and files

opt.backup                      = false
opt.swapfile                    = false
opt.undofile                    = true
opt.writebackup                 = false

--2 Base startup settings

opt.errorbells                  = false
opt.lazyredraw                  = true     -- don't redraw during macro, regex execution, scroll?

--3 UI
opt.guicursor                   = { 'n-c-v:block-nCursor' }
opt.fillchars                   = { eob =' ' }         -- disable ~ on empty lines.

opt.shortmess:append "c" -- don't show redundant messages from ins-completion-menu
opt.shortmess:append "I" -- don't show the default intro message

---- Colour
opt.termguicolors               = true     -- 24 bit colour
opt.synmaxcol                   = 600      -- don't syntax-highlight long lines

------ Colour: Highlights
opt.cursorcolumn                = true     -- highlight cursor column
-- opt.cursorline                  = true     -- highlight cursor line

--- Completions
opt.completeopt                 = { 'menuone', 'noinsert', 'noselect', 'preview' }
opt.wildmenu                    = true
opt.wildmode                    = { 'longest:full' , 'full' }
opt.wildignore                  = '*.so,*.swp,*.zip,*/node_modules/*'
opt.wildignorecase              = true
opt.pumblend                    = 5        -- Make popup window translucent
opt.pumheight                   = 15

--- Diff
--opt.diffopt:append "indent-heuristic"
--opt.diffopt = "linematch:60"

---- Fold
--opt.foldcolumn                  = 'auto'
opt.foldlevel                   = 2
opt.foldlevelstart              = 99
opt.foldminlines                = 2
opt.foldmethod                  = 'indent'
opt.foldnestmax                 = 10
---- List/show characters: eol,tab, etc
opt.list                        = true -- space + c to toggle
opt.listchars                   = { eol = '↲', extends = '→', precedes = '←', tab = '▸ ', trail = '·' }

---- Line Number Area
opt.number                      = true -- space + c to toggle
opt.numberwidth                 = 3
--opt.relativenumber              = true
opt.signcolumn                  = 'number'
--opt.signcolumn                  = 'auto:3'

---- netrw file explorer options
vim.g.netrw_banner              = 0
vim.g.netrw_browse_split        = 0
vim.g.netrw_dirhistmax          = 0
vim.g.netrw_ignorenetrc         = 1
vim.g.netrw_liststyle           = 3
vim.g.netrw_silent              = 1
vim.g.netrw_winsize             = 50
--vim.g.netrw_list_hide           = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore
---- Scrolloff
--opt.scrolloff                   = 9999     -- Always center cursor
opt.scrolloff                   = 4
opt.sidescrolloff               = 4

---- Splits
opt.splitbelow                  = true
opt.splitright                  = true

---- Title
opt.title                       = true
opt.titleold                    = ' '
opt.titlestring                 = '%.20F'

--4 Editor config
opt.autoindent                  = true
opt.autoread                    = true     -- checks if an open file is modified

vim.api.nvim_command([[filetype plugin indent on]])
opt.backspace                   = { 'indent', 'eol', 'start' } -- make backspace work like expected
opt.formatoptions               = 'qrn1'
opt.regexpengine                = 1

---- Search
opt.ignorecase                  = true
opt.showmatch                   = true
opt.smartcase                   = true
opt.smartindent                 = true
--opt.wrapscan                    = false -- prevent from going back to the beginning of the file

---- Tab
opt.expandtab                   = true     -- convert tabs to spaces
opt.shiftwidth                  = 4
opt.softtabstop                 = 4
opt.tabstop                     = 4

---- Wrap
opt.wrap                        = false              -- toggle with <leader>w
opt.whichwrap                   = '<,>,h,l,[,]'      -- move left or right to go to next line

---- I don't remember what this does TBH.
vim.g.markdown_fenced_languages = { "bash=sh", "css", "html", "javascript", "js=javascript",
"json=javascript", "lua", "php", "typescript", "scss", "vim" }

--5 Disable/Enable

---- FROM: https://github.com/NvChad/NvChad/blob/main/lua/core/options.lua
vim.g.loaded_2html_plugin       = 1
vim.g.loaded_getscript          = 1
vim.g.loaded_getscriptPlugin    = 1
vim.g.loaded_gzip               = 1
vim.g.loaded_logipat            = 1
--vim.g.loaded_netrw              = 1
--vim.g.loaded_netrwPlugin        = 1
--vim.g.loaded_netrwSettings      = 1
vim.g.loaded_netrwFileHandlers  = 1
vim.g.loaded_matchit            = 1
vim.g.loaded_tar                = 1
vim.g.loaded_tarPlugin          = 1
vim.g.loaded_rrhelper           = 1
vim.g.loaded_spellfile_plugin   = 1
vim.g.loaded_vimball            = 1
vim.g.loaded_vimballPlugin      = 1
vim.g.loaded_zip                = 1
vim.g.loaded_zipPlugin          = 1

---- :checkhealth , Disable providers I don't use.
vim.g.loaded_node_provider      = 0
vim.g.loaded_perl_provider      = 0
vim.g.loaded_python_provider    = 0
vim.g.loaded_python3_provider   = 0
vim.g.loaded_ruby_provider      = 0
