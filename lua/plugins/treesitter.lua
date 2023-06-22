return {
  "nvim-treesitter/nvim-treesitter",
  commit = "40ac56c4938280619211d8a666656f3744b40fcb",
  config = function()
    local status_ok, _ = pcall(require, "nvim-treesitter")
    if not status_ok then
      print "Error loading treesitter"
      return
    end

    ---@diagnostic disable-next-line: redefined-local
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      print "Error loading treesitter"
      return
    end

    configs.setup {
      ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "dart" }, -- put the language you want in this array
      -- ensure_installed = "all", -- one of "all" or a list of languages
      ignore_install = { "" }, -- List of parsers to ignore installing
      sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "css" }, -- list of language that will be disabled
      },
      autopairs = {
        enable = true,
      },
      indent = { enable = true, disable = { "python", "css" } },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    }
  end,
}
