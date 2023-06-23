return {
  {
    "arturgoms/moonbow.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colorscheme = "kanagawa"

      local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
      if not status_ok then
        print("Error loading colorscheme " .. colorscheme)
        return
      end
    end,
  },
  {
    "marko-cerovac/material.nvim",
  },
}
