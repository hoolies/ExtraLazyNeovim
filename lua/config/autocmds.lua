-------------------------------------------------- AUTOCMDS --------------------------------------

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Telescope when you run nvim without a file as an argument
-- autocmd("VimEnter", {
--   callback = function()
--     if vim.fn.argv(0) == "" then
--       require("telescope.builtin").oldfiles()
--     elseif vim.fn.isdirectory(vim.v.argv[2]) == 1 then
--       vim.api.nvim_set_current_dir(vim.v.argv[2])
--     end
--   end,
-- })

-- Remove whitespace on save
-- autocmd({
--   "BufWritePre",
--   "BufEnter",
-- }, {
--   pattern = "",
--   command = ":%s/\\s\\+$//e",
-- })

-- Adding my custom colours
autocmd("Vimenter", {
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#29465B" })
    vim.api.nvim_set_hl(0, "CursorColumn", { fg = "#737CA1" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF00FF" })
    vim.api.nvim_set_hl(0, "IncSearch", { bg = "#FF00FF" })
  end,
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o",
})

-- You open the file at the point you where last
autocmd("BufReadPost", { command = "normal! g'\"" })

-- Turn off relative numbers to terminal
-- autocmd("TermOpen", { command = "setlocal listchars= nonumber norelativenumber" })

-- Turn off relative numbers to oil buffers
-- autocmd("FileType", {
--   pattern = "oil",
--   callback = function()
--     vim.wo.number = false
--     vim.wo.relativenumber = false
--   end,
-- })
