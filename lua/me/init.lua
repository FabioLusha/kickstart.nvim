local configs = {}

configs = vim.list_extend(configs, require 'me.options')
configs = vim.list_extend(configs, require 'me.keymaps')

return configs
