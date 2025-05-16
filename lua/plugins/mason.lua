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
        ensure_installed = { "jdtls", "lua_ls", "ts_ls" }, 
      })

      local lspconfig = require("lspconfig")

      local servers = {
        lua_ls = function()
          require("config.lua-lsp")
        end,
        jdtls = function()
          -- jdtls normalmente tem configuração especial, pode deixar vazio aqui
        end,
        -- adicione outros servers personalizados aqui
      }

      for _, server_name in ipairs(require("mason-lspconfig").get_installed_servers()) do
        local custom = servers[server_name]
        if custom then
          custom()
        else
          lspconfig[server_name].setup({})
        end
      end
    end,
  },
}
