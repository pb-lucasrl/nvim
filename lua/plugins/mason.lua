-- ~/.config/nvim/lua/lsp/mason.lua
return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    lazy = false,
    config = function()
        require("mason").setup({
          ui = {
            open_on_start = false,
          },
        })
        require("mason-lspconfig").setup({
          ensure_installed = { "jdtls", "lua_ls"}, -- Add more servers here as needed
          ui = {
            open_on_start = false
          },
        })


        local lspconfig = require("lspconfig")

        -- Default handler for servers
        require("mason-lspconfig").setup_handlers({
            function(server_name)
              if server_name ~= 'jdtls' and server_name ~= 'lua_ls' then
                lspconfig[server_name].setup({})
              end
              if server_name == 'lua_ls' then
                require('config.lua-lsp')
              end
            end,
        })
    end,
  }
}
