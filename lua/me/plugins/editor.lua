return {
  -- {
  --   'ggandor/leap.nvim',
  --   config = function()
  --     require('leap').set_default_mappings()
  --   end,
  -- },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
    config = function()
      require('flash').toggle()
    end,
  },
  -- indentation guidelines/rails
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config
    opts = {
      indent = {
        char = '│',
      },
      -- show_current_context = true,
      -- show_current_context_start = true,
      -- use_treesitter = true,
      -- char_highlight_list = { 'IndentBlanklineChar' },
      -- context_char_highlight_list = { 'IndentBlanklineContextChar' },
    },
  },
}
