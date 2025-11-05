-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'olimorris/codecompanion.nvim',
    opts = {},
    enabled = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'codecompanion' },
  },
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    opts = {
      preview = {
        filetypes = { 'markdown', 'codecompanion' },
        ignore_buftypes = {},
      },
    },
  },
  {
    'echasnovski/mini.diff',
    config = function()
      local diff = require 'mini.diff'
      diff.setup {
        -- Disabled by default
        source = diff.gen_source.none(),
      }
    end,
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = false,
    config = function()
      require('nvim-web-devicons').setup {}
    end,
  },
  { 'MunifTanjim/nui.nvim' },
  { 'hrsh7th/nvim-cmp' },
  {
    'pieces-app/plugin_neo_vim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    -- whatever other options you already have:
    -- event = "VeryLazy",
    -- config = function() ... end,
  },
}
