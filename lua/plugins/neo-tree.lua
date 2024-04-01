return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = require("config.loadmappings").load_mappings("neo_tree"),
  opts = {
    enable_cursor_hijack = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      mappings = {
        ["<C-]"] = "navigate_up",
        ["<C-["] = "set_root",
      },
    },
    window = {
      width = 30,
    },
  },
}
