-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "scottmckendry/cyberdream.nvim" }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')

    use {
        'CopilotC-Nvim/CopilotChat.nvim',
        requires = {
            { 'github/copilot.vim', branch = 'release' }, 
            { 'nvim-lua/plenary.nvim', branch = 'master' },
        },
        run = 'make tiktoken',
        config = function()
            -- Additional configuration can go here
        end
    }

    use {'williamboman/mason.nvim'}
    use {'xiyaowong/transparent.nvim'}
end)
