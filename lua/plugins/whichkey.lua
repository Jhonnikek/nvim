return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      icons = { mappings = vim.g.have_nerd_font },
      preset = 'modern',
      spec = {
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
        { '<leader>l', group = 'Lazy', mode = { 'n' } },
        { '<leader>q', group = 'Session', mode = { 'n' } },
      },
    },
  },
}
