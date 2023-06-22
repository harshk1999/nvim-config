return {
  "arturgoms/moonbow.nvim",
  lazy = false,
  commit = "2564c8a8efc18eb65104c75b404972e4fabd1d25",
  config = function()
    local colorscheme = "moonbow"

    local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
    if not status_ok then
      print("Error loading colorscheme" .. colorscheme)
      return
    end
  end,
}
