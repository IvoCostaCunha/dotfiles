local map = vim.keymap

-- Because of touch bar on mac

-- Buffers
map.set('n', 'ba', ':bn<CR>')
map.set('n', 'bp', ':bp<CR>')
map.set('n', 'bd', ':bd<CR>')


-- Tabs
map.set('n', '<A-a>', ':tabnew<CR>')
map.set('n', '<A-h>', ':tabprevious<CR>')
map.set('n', '<A-l>', ':tabnext<CR>')
map.set('n', '<A-x>', ':tabclose<CR>')

-- Telescope
local telescope = require('telescope.builtin')
map.set('n', 'ff', telescope.find_files)
map.set('n', 'fg', telescope.live_grep)
map.set('n', 'fb', telescope.buffers)
map.set('n', 'fh', telescope.help_tags)
