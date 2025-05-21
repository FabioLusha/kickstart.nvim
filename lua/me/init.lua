local configs = {}

configs = vim.list_extend(configs, require 'me.options')
configs = vim.list_extend(configs, require 'me.keymaps')
configs = vim.list_extend(configs, require 'me.plugins.init')

return configs
