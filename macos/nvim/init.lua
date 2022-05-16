-- Calls Packer in .config/lua/plugins.nvim
require('plugins')

-- Load the colorscheme
vim.cmd[[colorscheme github_dark]]

require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})

-- Basic vim set(s)
vim.cmd([[
set number
set backspace=indent,eol,start
set laststatus=2
set statusline=%f
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
]])

vim.o.statusline = " %F %m %r %= %l:%c %Y %p%% " 
