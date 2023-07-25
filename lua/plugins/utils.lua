return {
  {"windwp/nvim-autopairs", opts={enable_check_bracket_line=false}},
  {
    "folke/flash.nvim", 
    config=true,
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config=function()
      require("neo-tree").setup()
      vim.keymap.set({"n","v"},"<leader>1",[[<cmd>Neotree toggle<CR>]])
    end
  },
  {
    "folke/which-key.nvim",
    config=true
  },
  {
    "echasnovski/mini.comment",
    config=true
  }
}
