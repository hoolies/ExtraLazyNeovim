return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  config = function()
    vim.cmd([[colorscheme tokyonight-storm]])
    -- Custom colors overides
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#29465B" })
    vim.api.nvim_set_hl(0, "CursorColumn", { fg = "#737CA1" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF00FF" })
    vim.api.nvim_set_hl(0, "IncSearch", { bg = "#FF00FF" })
  end,
}
