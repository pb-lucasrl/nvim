return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = false,    -- Disable file icons
            folder = false,  -- Disable folder icons
            folder_arrow = false, -- Disable folder arrow icons
            git = false,
          },
        },
      },
      view = {
        adaptive_size = true,
      },
      git = {
        enable = false,
      },
    }
  end,
}

