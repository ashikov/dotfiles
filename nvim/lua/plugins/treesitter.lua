return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "go",
        "lua",
        "bash",
        "yaml",
        "markdown",
        "markdown_inline", -- Обязательно для LazyVim
        "vim",             -- Обязательно
        "vimdoc",          -- Обязательно для помощи
        "query"            -- Чтобы сам treesitter подсвечивался правильно
      },
    },
  },
}

