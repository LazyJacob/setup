vim.g.mapleader = " "

require("jimbo.lazy_init")
require("jimbo.remap")

require("mason").setup()
require("mason-lspconfig").setup()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "json", "lua", "vim", "vimdoc", "python", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = {
    enable = true,
  },
}

vim.diagnostic.config({
    virtual_text = true
})

vim.cmd("colorscheme cyberdream")

vim.cmd('set expandtab')
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s %l %r"

vim.o.completeopt = "menuone,noselect,popup"


