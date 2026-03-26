local map = vim.keymap.set

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<C-Left>', '<C-w>h', { desc = 'Move Focus to Left Window' })
map('n', '<C-Right>', '<C-w>l', { desc = 'Move Focus to Right Window' })

map('n', '<S-Left>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
map('n', '<S-Right>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })

map({ 'n', 'v' }, 'd', [["_d]], { desc = 'Delete Selection' })

map('v', '"', 'c"<C-r>""<Esc>', { desc = 'Surround With Double Quotes' })
map('v', "'", "c'<C-r>\"'<Esc>", { desc = 'Surround With Single Quotes' })

map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })
map('n', '<leader>qw', '<cmd>xa<cr>', { desc = 'Write all and Quit' })
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })
