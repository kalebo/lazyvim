return {
  -- To blame without hesitation
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = { { "<leader>gB", "<cmd>Git blame<cr>", desc = "Git blame" } },
  },
}
