-- Auto-compile this
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- Package manager
use 'wbthomason/packer.nvim'

-- GitHub indications
use 'lewis6991/gitsigns.nvim' 

-- FileTree stuff
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  },
  tag = 'nightly',
}
-- LSP stuff
use 'williamboman/nvim-lsp-installer'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
use 'L3MON4D3/LuaSnip' -- Snippets plugin

-- Theme
use "projekt0n/github-nvim-theme"

end)
