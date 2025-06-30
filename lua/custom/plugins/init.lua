-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Navigate between tmux/vim panes/windows
  'christoomey/vim-tmux-navigator',
  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
    opts = {
      options = {
        numbers = function(opts)
          return string.format('%s', opts.raise(opts.ordinal))
        end,
        always_show_bufferline = true,
      },
    },
    keys = {
      {
        '<C-n>',
        '<Cmd>BufferLineCycleNext<CR>',
        mode = '',
        desc = '[N]ext buffer',
      },
      {
        '<C-p>',
        '<Cmd>BufferLineCyclePrev<CR>',
        mode = '',
        desc = '[P]revious buffer',
      },
      {
        '<leader>1',
        function()
          require('bufferline').go_to(1, true)
        end,
        mode = '',
        desc = 'Go to Buffer [1]',
      },
      {
        '<leader>2',
        function()
          require('bufferline').go_to(2, true)
        end,
        mode = '',
        desc = 'Go to Buffer [2]',
      },
      {
        '<leader>3',
        function()
          require('bufferline').go_to(3, true)
        end,
        mode = '',
        desc = 'Go to Buffer [3]',
      },
      {
        '<leader>4',
        function()
          require('bufferline').go_to(4, true)
        end,
        mode = '',
        desc = 'Go to Buffer [4]',
      },
      {
        '<leader>5',
        function()
          require('bufferline').go_to(5, true)
        end,
        mode = '',
        desc = 'Go to Buffer [5]',
      },
      {
        '<leader>6',
        function()
          require('bufferline').go_to(6, true)
        end,
        mode = '',
        desc = 'Go to Buffer [6]',
      },
      {
        '<leader>7',
        function()
          require('bufferline').go_to(7, true)
        end,
        mode = '',
        desc = 'Go to Buffer [7]',
      },
      {
        '<leader>8',
        function()
          require('bufferline').go_to(8, true)
        end,
        mode = '',
        desc = 'Go to Buffer [8]',
      },
      {
        '<leader>9',
        function()
          require('bufferline').go_to(9, true)
        end,
        mode = '',
        desc = 'Go to Buffer [9]',
      },
    },
  },
  -- Basic session persistence
  {
    'rmagatti/auto-session',
    version = '*',
    lazy = false,
    opts = {
      suppressed_dirs = { '/', '~/', '~/.config', '~/Agra', '~/Code', '~/Downloads' },
    },
  },
  {
    'sindrets/diffview.nvim',
    event = 'VimEnter',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = {
          layout = 'diff3_mixed',
          disable_diagnostics = true,
          winbar_info = true,
        },
      },
    },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[G]it [D]iff against index' },
      { '<leader>gf', '<cmd>DiffviewFileHistory %<cr>', desc = '[G]it [F]ile history' },
    },
  },
  {
    'meanderingprogrammer/render-markdown.nvim',
    version = '*',
    opts = {
      completions = { blink = { enabled = true } },
    },
  },
}
