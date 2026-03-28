return {
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        close_command = function(n) require('snacks').bufdelete(n) end,
        right_mouse_command = function(n) require('snacks').bufdelete(n) end,
        always_show_bufferline = false,

        offsets = {
          {
            filetype = 'snacks_layout_box',
            highlight = 'Directory',
            separator = true,
          },
        },
      },
    },
  },
}
