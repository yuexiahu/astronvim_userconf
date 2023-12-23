return {
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    -- load snippets path
    require("luasnip/loaders/from_vscode").lazy_load {
      -- path based on $MYVIMRC
      paths = { "./lua/user/snippets" },
    }
  end,
}
