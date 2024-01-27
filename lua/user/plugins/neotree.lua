return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  branch = "v3.x",
  config = function()
    require("neo-tree").setup({})
    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle reveal<cr>", { desc = "Neotree" })
  end,
}
