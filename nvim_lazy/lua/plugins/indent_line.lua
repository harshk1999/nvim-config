return {
  "lukas-reineke/indent-blankline.nvim",
  commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6",

  opts = {
    char = "▏",
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    use_treesitter = true,
    show_current_context = true,
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
      "help",
      "packer",
      "NvimTree",
    },
  },
}
