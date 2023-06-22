return {
  "windwp/nvim-autopairs",
  commit = "e8f7dd7a72de3e7b6626c050a802000e69d53ff0",
  config = function()
    local status_ok, npairs = pcall(require, "nvim-autopairs")
    if not status_ok then
      print "Error occured loading auto pairs"
      return
    end
    npairs.setup {
      check_ts = true, -- treesitter integration
      disable_filetype = { "TelescopePrompt" },
      ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
        java = false,
      },

      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 1, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
      },
    }

    local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    local cmp_status_ok, cmp = pcall(require, "cmp")
    if not cmp_status_ok then
      return
    end

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {})
  end,
}
