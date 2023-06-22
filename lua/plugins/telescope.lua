return {
  {
    "nvim-telescope/telescope.nvim",
    commit = "ffe35cb433192fcb5080b557c1aef14d37092035",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    priority = 1000,
    config = function()
      local status_ok, telescope = pcall(require, "telescope")
      if not status_ok then
        return
      end

      local actions = require "telescope.actions"
      telescope.setup {
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          path_display = { "smart" },
          file_ignore_patterns = { ".git/", "node_modules" },

          mappings = {
            i = {
              ["<Down>"] = actions.cycle_history_next,
              ["<Up>"] = actions.cycle_history_prev,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
          },
        },
      }
      telescope.load_extension "ui-select"
    end,
  },
}
