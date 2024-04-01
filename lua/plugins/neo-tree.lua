return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = require("config.loadmappings").load_mappings("neo_tree"),
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
