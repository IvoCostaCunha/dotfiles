local colors = {
  err = 'LightRed',
  warn = 'LightYellow',
  hint = 'LightCyan',
  info = 'White'
}

local setHighlights = function()
  vim.cmd("highlight! LspDiagnosticsUnderlineError guifg="..colors.err)
  vim.cmd("hi! LspDiagnosticsUnderlineWarning guifg="..colors.warn)
  vim.cmd("hi! LspDiagnosticsUnderlineHint guifg="..colors.hint)
  vim.cmd("hi! LspDiagnosticsUnderlineInfo guifg="..colors.info)

  vim.cmd("hi! LspDiagnosticsFloatingError guifg="..colors.err)
  vim.cmd("hi! LspDiagnosticsFloatingWarning guifg="..colors.warn)
  vim.cmd("hi! LspDiagnosticsFloatingHint guifg="..colors.hint)
  vim.cmd("hi! LspDiagnosticsFloatingInfo guifg="..colors.info)

  vim.cmd("hi! LspDiagnosticsSignsError guifg="..colors.err)
  vim.cmd("hi! LspDiagnosticsSignsWarning guifg="..colors.warn)
  vim.cmd("hi! LspDiagnosticsSignsHint guifg="..colors.hint)
  vim.cmd("hi! LspDiagnosticsSignsInfo guifg="..colors.info)

  -- To show numbers instead of icons
  vim.cmd("hi! DiagnosticLineNrError guifg="..colors.err.." gui=bold")
  vim.cmd("hi! DiagnosticLineNrWarn guifg="..colors.warn.." gui=bold")
  vim.cmd("hi! DiagnosticLineNrHint guifg="..colors.hint.." gui=bold")
  vim.cmd("hi! DiagnosticLineNrInfo guifg="..colors.info.." gui=bold")
  vim.cmd('sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError')
  vim.cmd('sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn')
  vim.cmd('sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo')
  vim.cmd('sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint')

  -- Lualine diagnostic colors
  vim.cmd("hi! lualine_b_diagnostics_error_normal guifg="..colors.err.." gui=bold")

  -- Trouble diagnostic colors
  vim.cmd("hi TroubleSignError guifg="..colors.err)
  vim.cmd("hi TroubleSignWarning guifg="..colors.warn)
  vim.cmd("hi TroubleSignHint guifg="..colors.hint)
  vim.cmd("hi TroubleSignInformation guifg="..colors.info)
end

-- Call setHighlights():q when a theme is set
vim.api.nvim_create_autocmd({'colorscheme'}, {
  callback = setHighlights
})


