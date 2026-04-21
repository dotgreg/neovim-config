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

-- GREG > template
require("catppuccin").load("latte")
