return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      explorer = { enabled = true, hidden = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true, timeout = 3000 },
      picker = { enabled = true, hidden = true, ignored = true },
      quickfile = { enabled = true },
      rename = { enabled = true },
      dashboard = {
        preset = {
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
          header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
      ]],
        },
        sections = {
          { section = 'header' },
          { section = 'keys', indent = 1, padding = 1 },
          { section = 'recent_files', icon = ' ', title = 'Recent Files', indent = 3, padding = 2 },
          { section = 'startup' },
        },
      },
      styles = {
        input = {
          relative = 'cursor',
          border = 'single',
        },
        notification = {
          border = 'single',
        },
        terminal = {
          border = 'single',
          backdrop = false,
          width = 0.9,
          height = 0.9,
        },
      },
    },
    keys = {
      { '<leader>qd', function() Snacks.bufdelete() end, desc = 'Buffer Delete', mode = 'n' },
      { '<leader>ba', function() Snacks.bufdelete.all() end, desc = 'Buffer Delete All', mode = 'n' },
      { '<leader>bo', function() Snacks.bufdelete.other() end, desc = 'Buffer Delete Other', mode = 'n' },
      { '<leader>bz', function() Snacks.zen() end, desc = 'Toggle Zen Mode', mode = 'n' },
      { '<leader>e', function() Snacks.explorer() end, desc = 'Explorer' },
      { '<leader>ld', function() Snacks.terminal 'lazydocker' end, desc = 'LazyDocker' },
      { '<leader>gg', function() Snacks.lazygit() end, desc = 'LazyGit' },
      { '<leader>sf', function() Snacks.picker.files() end, desc = 'Find Files' },
      { '<leader>sg', function() Snacks.picker.grep() end, desc = 'Live Grep' },
      { '<leader>s.', function() Snacks.picker.recent() end, desc = 'Recent Files' },
      { 'grd', function() Snacks.picker.lsp_definitions() end, desc = 'Go to Definition' },
      { 'grr', function() Snacks.picker.lsp_references() end, desc = 'Go to References' },
      { 'gri', function() Snacks.picker.lsp_implementations() end, desc = 'Go to Implementation' },
      { 'gO', function() Snacks.picker.lsp_symbols() end, desc = 'Document Symbols' },
    },
    config = function(_, opts)
      require('snacks').setup(opts)

      Snacks.toggle.new {
        id = 'ufo',
        name = 'Enable/Disable ufo',
        get = function() return require('ufo').inspect() end,
        set = function(state)
          if state == nil then
            require('noice').enable()
            require('ufo').enable()
            vim.o.foldenable = true
            vim.o.foldcolumn = '1'
          else
            require('noice').disable()
            require('ufo').disable()
            vim.o.foldenable = false
            vim.o.foldcolumn = '0'
          end
        end,
      }
    end,
  },
}
