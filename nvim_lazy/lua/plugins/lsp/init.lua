return {
  {
    "williamboman/mason.nvim",
    commit = "664c987c3b14d2262a4e580f993a3e5045baded0",
    dependencies = {
      { "neovim/nvim-lspconfig", commit = "1bbc8e6751d9624e1f6b9e288132326e1afed630" }, -- enable LSP
      { "williamboman/mason-lspconfig.nvim", commit = "d381fcb78d7a562c3244e1c8f76406954649db36" },
      { "jose-elias-alvarez/null-ls.nvim", commit = "ef31c14850fd93ce15d15cfb6ddc3e190f80443e" }, -- for formatters and linters
    },
    config = function()
      local status_ok, _ = pcall(require, "lspconfig")
      if not status_ok then
        return
      end

      require "plugins.lsp.mason_setup"
      require("plugins.lsp.handlers").setup()
      require("plugins.lsp.null-ls").setup()
    end,
  },
}
