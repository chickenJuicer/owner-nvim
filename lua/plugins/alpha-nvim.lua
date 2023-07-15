
return{
  {
    'goolord/alpha-nvim',
    config=function()
      local alpha = require("alpha")

      local dashboard = require("alpha.themes.dashboard");

      dashboard.section.buttons.val = {
        dashboard.button("<Leader>1", "  File Explorer",":NvimTreeOpen<CR>"),
        dashboard.button("<Leader>ff", "  Find File",":cd $HOME/workspace | Telescope find_files<CR>"),
        dashboard.button("<Leader>fw", "  Recept",":Telescope oldfiles<CR>"),
        dashboard.button("q", "  Quit", ":qa<cr>")
      }
      alpha.setup(dashboard.opts)
      vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
      -- require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
}
