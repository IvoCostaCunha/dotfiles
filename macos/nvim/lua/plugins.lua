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

use "projekt0n/github-nvim-theme"

end)
