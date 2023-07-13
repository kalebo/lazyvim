return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- override buffer switch to sort by mru
    { "<leader>,", "<cmd>Telescope buffers sort_mru=true<cr>", desc = "Buffer MRU list" },
    -- allow leader star
    { "<leader>*", "<cmd>Telescope grep_string<cr>", desc = "Grep project for symbol" },
    -- leader star in visual selection
    {
      "<leader>*",
      function()
        local function getVisualSelection()
          vim.cmd('noau normal! "vy"')
          local text = vim.fn.getreg("v")
          vim.fn.setreg("v", {})

          text = string.gsub(text, "\n", "")
          if #text > 0 then
            return text
          else
            return ""
          end
        end
        require("telescope.builtin").grep_string({ search = getVisualSelection() })
      end,
      desc = "Grep project for selected string",
      mode = "v",
    },
  },
}
