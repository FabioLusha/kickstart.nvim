function set_keymap(lhs, rhs, desc, mode)
  mode = mode or 'n'
  vim.validate {
    mode = { mode, { 'string', 'table' } },
    desc = { desc, 'string' },
  }
  vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

local res = {
  -- Adjust window size
  { '<C-,>', '<cmd>wincmd ><CR>', 'Increase window size towards left' },
  { '<C-.>', '<cmd>wincmd <<CR>', 'Increase window size towards right' },
  { '+', '<cmd>wincmd +<CR>', 'Increase window size towards top' },
  { '-', '<cmd>wincmd -<CR>', 'Increase window size towards bottom' },
  { '=', '<cmd>wincmd =<CR>', 'Restore default window size' },

  -- Window movement
  { '<C-h>', '<cmd>wincmd h<CR>', 'Move to window on left' },
  { '<C-k>', '<cmd>wincmd k<CR>', 'Move to window on top' },
  { '<C-l>', '<cmd>wincmd l<CR>', 'Move to window on right' },
  { '<C-j>', '<Cmd>wincmd j<CR>', 'Move to window on bottom' },
}

for _, item in ipairs(res) do
  local lhs = item[1]
  local rhs = item[2]
  local desc = item[3]
  set_keymap(lhs, rhs, desc)
end
