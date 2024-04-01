local M = {}

M.general = {
  n = {
    ["<tab>"] = { "<cmd>bnext<cr>", "Next Buffer" },
    ["<S-tab>"] = { "<cmd>bprevious<cr>", "Prev Buffer" },
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

return M
