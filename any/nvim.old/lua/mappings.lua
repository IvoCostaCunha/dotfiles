-- ! DO NOT LEAVE UNAMAPPED COMMANDS
-- nvim-tree bindings
vim.cmd('nnoremap <C-b> :NvimTreeToggle<CR>')
-- Buffers bindings
vim.cmd('nnoremap <C-Left> :bn<CR>')
vim.cmd('nnoremap <C-Right> :bp<Cr>')

-- Tab bindings
vim.cmd('nnoremap <A-Left> :tabprevious<CR>')
vim.cmd('nnoremap <A-Right> :tabnext<CR>')
vim.cmd('nnoremap <A-Down> :tabclose<CR>')
vim.cmd('nnoremap <A-Up> :tabnew<CR>')

-- Telescope bindings
vim.cmd('nnoremap ff <cmd>lua require("telescope.builtin").find_files()<CR>')
vim.cmd('nnoremap fg <cmd>lua require("telescope.builtin").live_grep()<CR>')
vim.cmd('nnoremap fb <cmd>lua require("telescope.builtin").buffers()<CR>')
vim.cmd('nnoremap fh <cmd>lua require("telescope.builtin").help_tags()<CR>')

-- Trouble bindings
vim.cmd('nnoremap xx :TroubleToggle<CR>')
vim.cmd('nnoremap xw :TroubleToggle workspace_diagnostics<CR>')
vim.cmd('nnoremap <leader>xd :TroubleToggle document_diagnostics<CR>')
vim.cmd('nnoremap <leader>xq :TroubleToggle quickfix<CR>')
vim.cmd('nnoremap <leader>xl :TroubleToggle loclist<CR>')
vim.cmd('nnoremap gR :TroubleToggle lsp_references<CR>')

-- DAP (Debugger) bindings TODO
vim.cmd('nnoremap cx :lua require"dap".toggle_breakpoint()<CR>')
-- vim.cmd('nnoremap  :lua require"dap".continue()<CR>')
-- vim.cmd('nnoremap  :lua require"dap".step_over()<CR>')
-- vim.cmd('nnoremap  :lua require"dap".step_into()<CR>')
-- vim.cmd('nnoremap  :lua require"dap".repl.open()<CR>')
