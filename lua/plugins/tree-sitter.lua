return {
  "nvim-treesitter/nvim-treesitter",
  version = "*", -- Use the latest version, or specify a version if needed
  lazy = false,  -- Set to `true` if you want to lazy load the plugin
  config = function()
    require'nvim-treesitter.configs'.setup {
      -- List of parsers you want to install
      ensure_installed = {"lua", "java", "json", "python", "markdown"},  -- Or list specific languages like { "lua", "python" }
      highlight = {
        enable = true,  -- Enable syntax highlighting
      },
      indent = {
        enable = true,  -- Enable indentation based on Tree-sitter
      },
    }
  end,
}
