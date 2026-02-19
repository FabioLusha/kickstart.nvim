-- in Lua {} initializes a table (a lis of objects), which can be an
-- array, a map, an object or more complex datatypes
-- here we return the list of plugins to be loaded with their spec

return {
  { "tpope/vim-surround" },
  {
    -- jupyter notebook plugin
    'kiyoon/jupynium.nvim',
    build = function(plugin)
      local venv_path = vim.fn.expand '$HOME/.local/share/virtualenv/jupynium'
      local python_exec = venv_path .. '/bin/python'
      -- create the venv if it does not exist
      vim.fn.system { 'uv', 'venv', venv_path, '--seed' }
      -- install jupynium for the venv
      vim.fn.system { 'uv', 'pip', 'install', plugin.dir, '--python', python_exec }
    end,
    opts = {
      python_host = os.getenv 'HOME' .. '/.local/share/virtualenv/jupynium/bin/python',
      default_notebook_URL = 'localhost:8888',
    },
  },
  { 'rcarriga/nvim-notify' }, -- optional
  { 'stevearc/dressing.nvim' }, -- optional, UI for :JupyniumKernelSelect
  {
    'f-person/git-blame.nvim',
    -- load the plugin at startup
    event = 'VeryLazy',
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin will only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true, -- if you want to enable the plugin
      message_template = ' <summary> • <date> • <author> • <<sha>>', -- template for the blame message, check the Message template section for more options
      date_format = '%m-%d-%Y %H:%M:%S', -- template for the date, check Date format section for more options
      virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
    },
  },
  {
    -- Remote connection
    'amitds1997/remote-nvim.nvim',
    version = '*', -- Pin to GitHub releases
    dependencies = {
      'nvim-lua/plenary.nvim', -- For standard functions
      'MunifTanjim/nui.nvim', -- To build the plugin UI
      'nvim-telescope/telescope.nvim', -- For picking b/w different remote methods
    },
    config = true,
  },
  -- Typst config
  {
    'chomosuke/typst-preview.nvim',
    lazy = false, -- or ft = 'typst'
    version = '1.*',
    opts = {},
  },
}
