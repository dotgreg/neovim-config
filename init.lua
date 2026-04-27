-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require("luasnip.loaders.from_vscode").lazy_load()

-- GREG > remove autocomment on new lines
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove({ "o", "r" })
  end,
})

-- GREG > leaving terminal on esc
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- GREG > template > white
-- require("catppuccin").load("latte")
-- GREG > template > white
-- require("catppuccin").load("macchiato")

-- GREG > template > dark
require("monokai-pro").set_filter("machine")

vim.api.nvim_set_hl(0, "Error", { fg = "#FF8C00" }) -- Change red to orange
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#FF8C00" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF8C00" })

local function replace_yellow_with_orange()
  local highlights = vim.api.nvim_exec("highlight", true)
  for line in highlights:gmatch("[^\r\n]+") do
    if line:match("guibg=#%x+") and line:match("guibg=#....00") then
      local group = line:match("^(%S+)")
      vim.api.nvim_set_hl(0, group, { bg = "#FFA500" })
    end
  end
end
replace_yellow_with_orange()
