vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}
use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
use 'mbbill/undotree'
use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
use "rafamadriz/friendly-snippets"
use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use "nvim-lua/plenary.nvim"
use 'm4xshen/autoclose.nvim'
use { 'mg979/vim-visual-multi', branch = 'master' }
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
use { "ellisonleao/gruvbox.nvim" }
use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
}
use {"ntk148v/komau.vim"} -- Packer
--use "yamatsum/nvim-cursorline"
end)

