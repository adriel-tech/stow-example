-- Remove 'disable mouse' from right click menu.
vim.cmd.aunmenu{'PopUp.How-to\\ disable\\ mouse'}
vim.cmd.aunmenu{'PopUp.-1-'}

-- Custom
vim.cmd.anoremenu{'PopUp.-Sep- :'}
vim.cmd.anoremenu{'PopUp.Replace <Cmd>%s/Search-Word/Replace-Word/g'}
vim.cmd.anoremenu{'PopUp.-Sep1- :'}
vim.cmd.anoremenu{'PopUp.Open\\ File <Cmd>:silent Vexplore!<CR>'}
vim.cmd.anoremenu{'PopUp.Close\\ File <Cmd>:q!<CR>'}
vim.cmd.anoremenu{'PopUp.Replace :%s/Search-Word/Replace-Word/g'}

