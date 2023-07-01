local utils = require "astronvim.utils"
-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add julia lsp and toml lsp to ensure_installed
      utils.list_insert_unique(opts.ensure_installed, { "bashls", "lua_ls" })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add julia lsp and toml lsp to ensure_installed
      utils.list_insert_unique(opts.ensure_installed, { "prettier" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- opts = function(_, opts)
    --   -- Ensure that opts.ensure_installed exists and is a table
    --   if not opts.ensure_installed then opts.ensure_installed = {} end
    --   -- Add julia lsp and toml lsp to ensure_installed
    --   utils.list_insert_unique(opts.ensure_installed, { "python" })
    -- end
  },
}
