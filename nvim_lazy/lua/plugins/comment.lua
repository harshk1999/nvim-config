return {
  "numToStr/Comment.nvim",
  commit = "3d22da7f8d72d3eafe1491a7f05ea775b930c481",
  config = function()
    local status_ok, comment = pcall(require, "Comment")
    if not status_ok then
      print "Error loading comment.nvim"
      return
    end
    comment.setup {}
  end,
}
