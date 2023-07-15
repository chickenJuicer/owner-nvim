return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config=function()
      require('bufferline').setup{
        options={
          offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
          }}
        }
      }
    end
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config=true
  },
  {
    'RRethy/vim-illuminate',
    config=function ()
      require('illuminate').configure()
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config=true
  },

}
