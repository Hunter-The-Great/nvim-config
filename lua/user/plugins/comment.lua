return {
  "numToStr/Comment.nvim",

  config = function()
    local comment = require("Comment")
    ---@diagnostic disable-next-line: missing-fields
    comment.setup({
      toggler = {
        ---Line-comment toggle keymap
        line = "<leader>cc",
        ---Block-comment toggle keymap
        block = "<leader>cb",
      },
    })
  end,
}
