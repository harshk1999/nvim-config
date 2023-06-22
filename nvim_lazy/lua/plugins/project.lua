return {
  "ahmedkhalf/project.nvim",
  commit = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb",
  opts = {
    -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
    detection_methods = { "pattern" },
    -- patterns used to detect root dir, when **"pattern"** is in detection_methods
    patterns = { ".git", "Makefile", "package.json", "pubspec.yaml", "README.md", ".proj" }, -- This .proj is useful in case of single file
  },
  config = function()
    local tele_status_ok, telescope = pcall(require, "telescope")
    if not tele_status_ok then
      return
    end

    telescope.load_extension "projects"
  end,
}
