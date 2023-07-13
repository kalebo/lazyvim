return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Override lazy default so we don't automatically format on save
      autoformat = false,
    },
  },
}
