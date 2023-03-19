local opt                       = vim.opt

---- Statusline
opt.laststatus                  = 0        -- 0 Hide, 3 Always show global statusline
opt.cmdheight                   = 0        -- 0 Hide cmd line
opt.ruler                       = true     -- show line and column number of cursor
opt.showcmd                     = false    -- shows/hides buttons pushed in statusbar
opt.showmode                    = false    -- Added back to statusline
opt.statusline                  = '%{%v:lua.string.upper(v:lua.vim.fn.mode())%} %.30F %m%r%y%= %c %l/%L %P'

