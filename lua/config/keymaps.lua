-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function toggle_copilot()
  if vim.g.copilot_enabled == 1 then
    vim.cmd("Copilot disable")
    vim.notify("Copilot disabled", vim.log.levels.INFO)
  else
    vim.cmd("Copilot enable")
    vim.notify("Copilot enabled", vim.log.levels.INFO)
  end
end

vim.keymap.set("n", "<C-S-g>", toggle_copilot, { desc = "Toggle Copilot" })
