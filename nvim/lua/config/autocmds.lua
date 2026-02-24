-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Удалить пробелы в конце строк
    vim.cmd([[%s/\s\+$//e]])

    -- Если это markdown — ничего не делаем
    if vim.bo.filetype == "markdown" then
      return
    end

    -- Добавить пустую строку в конец, если её нет
    local last_line = vim.fn.getline("$")
    if last_line ~= "" then
      vim.cmd("normal! Go")
    end
  end,
})

