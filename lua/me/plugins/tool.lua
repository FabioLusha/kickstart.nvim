-- in Lua {} initializes a table (a lis of objects), which can be an
-- array, a map, an object or more complex datatypes
-- here we return the list of plugins to be loaded with their spec

return {
  {
    -- jupyter notebook plugin
    'kiyoon/jupynium.nvim',
    build = 'uv pip install . --python=$HOME/.local/share/virtualenv/jupynium/bin/python',
  },
  'rcarriga/nvim-notify', -- optional
  'stevearc/dressing.nvim', -- optional, UI for :JupyniumKernelSelect
}
