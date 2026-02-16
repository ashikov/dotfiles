-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>tc", function()
  local row = vim.fn.line(".")
  local start_row = row

  -- Найдём границы таблицы (сверху)
  while start_row > 1 and vim.fn.getline(start_row - 1):match("^|") do
    start_row = start_row - 1
  end

  -- Найдём границы таблицы (снизу)
  local end_row = row
  local last = vim.fn.line("$")
  while end_row < last and vim.fn.getline(end_row + 1):match("^|") do
    end_row = end_row + 1
  end

  -- Проходим по всем строкам таблицы
  for i = start_row, end_row do
    local line = vim.fn.getline(i)

    -- строка-разделитель
    if line:match("^|%s*%-") then
      line = line:gsub("|%s*$", "|---|")
    else
      -- обычная строка
      line = line:gsub("|%s*$", "|   |")
    end

    vim.fn.setline(i, line)
  end

  vim.cmd("TableModeRealign")
end, { desc = "Add table column to all rows" })

