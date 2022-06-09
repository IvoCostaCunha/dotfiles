-- Auto-compile this
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]


function getConfig(plugin)
  return string.format('require("config/%s")',plugin)
end

return require('packer').startup(function()

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- Theme
use {
  'folke/tokyonight.nvim',
  config = getConfig('tokyonight-theme')
}
-- use {
--   'projekt0n/github-nvim-theme',
--   config = getConfig('github-theme')
-- }

use {
  'mfussenegger/nvim-dap'
}

use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = getConfig('nvim-treesitter')
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = getConfig('lualine')
}

use {
  'nvim-telescope/telescope.nvim',
  requires = {
    {'nvim-lua/plenary.nvim'}
  },
  config = getConfig('telescope')
}

-- GitHub indications
use {
  'lewis6991/gitsigns.nvim',
  config = getConfig('gitsigns')
}

-- FileTree stuff
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  }, 
  tag = 'nightly',
  config = getConfig('nvim-tree')
}

-- LSP stuff
use {
    "williamboman/nvim-lsp-installer",
    {
      "neovim/nvim-lspconfig",
      config = getConfig("nvim-lspconfig")
    },
}

-- Autocompletion plugins
-- All configured in nvim-cmp.lua
use {
  'hrsh7th/nvim-cmp',
  config = getConfig('nvim-lspconfig')
}

use 'hrsh7th/cmp-nvim-lsp'

-- Snippets collections for LuaSnip
use 'rafamadriz/friendly-snippets'

use 'saadparwaiz1/cmp_luasnip'

use 'L3MON4D3/LuaSnip'

end)
