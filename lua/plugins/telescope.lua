return {
  'nvim-telescope/telescope.nvim',
  tag='0.1.2',
  dependencies={
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim',build='make'}
  },
  config=function()
    require('telescope').setup{
      extensions={
        fzf={
          fuzzy=true,
          override_generic_sorter=true,
          override_file_sorter=true,
          case_mode="smart_case",
        }
      }
    }
    require('telescope').load_extension('fzf')
    local builtin = require('telescope.builtin')
    local themes= require('telescope.themes')
    vim.keymap.set('n','<leader>ff',builtin.find_files,{})
    vim.keymap.set('n','<leader>fg',builtin.live_grep,{})
    vim.keymap.set('n','<leader><space>',builtin.buffers,{})
    vim.keymap.set('n','<leader>fh',builtin.help_tags,{})
    vim.keymap.set('n','<leader>?',builtin.oldfiles,{desc = '[?] Find recently opened files'})
    -- 搜索
    vim.keymap.set('n','<leader>/',function ()
      builtin.current_buffer_fuzzy_find(themes.get_dropdown{winblend=10,previewer = false,})
    end)

  end
}
