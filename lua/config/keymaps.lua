local M = {}

M.general = {
  n = {
    ["<tab>"] = { "<cmd>bnext<cr>", "Next Buffer" },
    ["<S-tab>"] = { "<cmd>bprevious<cr>", "Prev Buffer" },

    -- Vim REST Console
    ["<leader>rc"] = { "<cmd>call VrcQuery()<CR>", "Run REST Query" },
  },
}

M.neo_tree = {
  n = {
    ["<C-n>"] = {
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      "Explorer NeoTree (cwd)",
    },
  },
}

M.gopher = {
  n = {
    ["<leader>gsj"] = { "<cmd> GoTagAdd json <CR>", "Add json struct tags" },
    ["<leader>gsy"] = { "<cmd> GoTagAdd yaml <CR>", "Add yaml struct tags" },
  },
}

return M
