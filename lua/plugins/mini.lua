return {
  {
    'nvim-mini/mini.nvim',
    event = 'VeryLazy',
    config = function()
      require('mini.ai').setup { n_lines = 500 }

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }
      statusline.active = function()
        local mode, mode_hl = MiniStatusline.section_mode { trunc_width = 120 }
        local git = MiniStatusline.section_git { trunc_width = 40 }
        local diff = MiniStatusline.section_diff { trunc_width = 75 }
        local filename = '%t %m %r'
        local fileinfo = MiniStatusline.section_fileinfo { trunc_width = 160 }
        local search = MiniStatusline.section_searchcount { trunc_width = 75 }
        local location = '%2l:%-2v'

        local ft = vim.bo.filetype
        if ft:match '^snacks_' then filename = '' end

        return MiniStatusline.combine_groups {
          { hl = mode_hl, strings = { mode } },
          { hl = 'MiniStatuslineDevinfo', strings = { git, diff } },
          '%<', -- Mark general truncate point
          { hl = 'MiniStatuslineFilename', strings = { filename } },
          '%=', -- End left alignment
          { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
          { hl = mode_hl, strings = { search, location } },
        }
      end

      local hipatterns = require 'mini.hipatterns'
      hipatterns.setup {
        highlighters = {
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
          todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
          note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      }
    end,
  },
}
