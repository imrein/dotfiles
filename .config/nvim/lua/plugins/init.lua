return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { "rodjek/vim-puppet", ft = "puppet" },

  { "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true
    }
  }
}
