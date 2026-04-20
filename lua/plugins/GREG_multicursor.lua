return {
  {
    "mg979/vim-visual-multi",
    branch = "master", -- Use the latest stable branch
    keys = {
      -- Define keybindings (optional, see below)
      { "<C-n>", "<Plug>(VM-Find-Under)", mode = { "n", "x" }, desc = "Visual Multi: Find Under Cursor" },
      -- { "<C-M-Up>",   "<Plug>(VM-Add-Cursor-Up)",   mode = "n",          desc = "Visual Multi: Add Cursor Up" },
      -- { "<C-M-Down>", "<Plug>(VM-Add-Cursor-Down)", mode = "n",          desc = "Visual Multi: Add Cursor Down" },
    },
    init = function()
      -- Optional: Set global variables before the plugin loads
      vim.g.VM_mouse_mappings = 1 -- Enable mouse support
      vim.g.VM_theme = "iceblue"  -- Set theme (e.g., "iceblue", "neon")
    end,
  },
}
