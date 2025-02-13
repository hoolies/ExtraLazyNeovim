-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to spacebar
map("", "<SPACE>", "<nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("n", "<left>", "<nop>")
map("n", "<right>", "<nop>")

-- Better Navigation, it is not required as long as scrolloff = 999
-- map('n', 'j', 'jzz')
-- map('n', 'k', 'kzz')

-- Navigate in Insert Mode
map("i", "<C-k>", "<Up>")
map("i", "<C-j>", "<Down>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "jj", "<Esc>")

-- Toggle the undotree
map("n", "<leader>U", ":UndotreeToggle<CR>", { desc = "Opens UndoTree" })

-- Clear search with <esc>
map("n", "<Esc>", "<cmd>nohl<cr>", { desc = "Escape and Clear hlsearch" })

-- Oil
-- map("n", "<leader>e", ":Oil --float<CR>", { desc = "Opens Oil in floating mode" })

-- Replace the world under the cursor
map("n", "<Leader>/", [[:%s/<C-r><C-w>//g<Left><Left>]])
map("v", "<Leader>/", [[:%s/<C-r><C-w>//g<Left><Left>]])

-- Delete without copying into register
map("n", "x", '"_x')
map("v", "x", '"_x')
map("n", "dd", '"_dd')
map("n", "dd", '"_dd')
