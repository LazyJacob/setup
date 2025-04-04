require("jimbo.remap")
require("mason").setup()

vim.cmd('colorscheme cyberdream')
vim.cmd('set tabstop=4')
vim.cmd('set expandtab')
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s %l %r"

vim.o.completeopt = "menuone,noselect,popup"

