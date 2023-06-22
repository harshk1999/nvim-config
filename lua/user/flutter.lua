-- flutter tools is currently not installed so this configuration is useless
local f_tools = require "flutter-tools"

f_tools.setup {
  debugger = { -- integrate with nvim dap + install dart code debugger
    enabled = true,
    run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
    -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
    -- see |:help dap.set_exception_breakpoints()| for more info
    -- exception_breakpoints = {},
  },
  decorations = {
    statusline = { device = true, app_version = true },
  },
  dev_log = {
    enabled = false,
    open_cmd = "tabedit", -- command to use to open the log buffer
  },
}

require("telescope").load_extension "flutter"
