return {

  {
    
    "xiantang/darcula-dark.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    
    lazy = false, -- Load immediately
    priority = 1000, -- Ensure it loads first

    config = function()
      -- Activate the colorscheme
      vim.cmd.colorscheme("darcula-dark")
    end,


  }

}
