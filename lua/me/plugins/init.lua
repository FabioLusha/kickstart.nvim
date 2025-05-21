local plugins = {}

-- Merge plugin specs from other files
plugins = vim.list_extend(plugins, require 'me.plugins.editor')
plugins = vim.list_extend(plugins, require 'me.plugins.completion')
plugins = vim.list_extend(plugins, require 'me.plugins.tool')
plugins = vim.list_extend(plugins, require 'me.plugins.ui')

return plugins
