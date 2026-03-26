return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ansiblels = {
          settings = {
            ansible = {
              validation = {
                enabled = true, -- Оставляем общую валидацию (синтаксис)
                lint = {
                  enabled = false, -- ВЫКЛЮЧАЕМ ANSIBLE-LINT
                },
              },
            },
          },
        },
      },
    },
  },
}

