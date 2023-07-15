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
    'lewis6991/gitsigns.nvim',
    config=true
  }

}
