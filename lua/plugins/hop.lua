return {
  "phaazon/hop.nvim",
  commit = "03f0434869f1f38868618198b5f4f2ab6d39aef2",
  config = function()
    local hop = require "hop"
    local directions = require("hop.hint").HintDirection
    vim.keymap.set("", "f", function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
    end, { remap = true })
    vim.keymap.set("", "F", function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
    end, { remap = true })
    vim.keymap.set("", "t", function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }
    end, { remap = true })
    vim.keymap.set("", "T", function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
    end, { remap = true })

    vim.keymap.set("", "<leader>hw", ":HopWord<cr>", { remap = true })
    vim.keymap.set("", "<leader>hl", ":HopLine<cr>", { remap = true })
    vim.keymap.set("", "<leader>hs", ":HopLineStart<cr>", { remap = true })

    hop.setup()
  end,
}
