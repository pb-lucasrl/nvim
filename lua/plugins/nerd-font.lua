return {
  {
    'nvim-tree/nvim-web-devicons', 
    lazy = false,
    cmd = 'NerdIcons', 
    config = function() 
      require('nvim-web-devicons').setup({}) 
    end
  }
}
