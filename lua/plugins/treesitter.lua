return {
  "nvim-treesitter/nvim-treesitter",
  dependencies={
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  main="nvim-treesitter.configs",
  build=":TSUpdate",
  ops={
    ensure_installed="all",
    highlight={enable=true},
    indent = {enable=true},
    playground={
      enable=true
    },
    textobjects={
      select={
        enable=true,
        include_surrounding_whitespace = false,
      }
    }
  },
}

