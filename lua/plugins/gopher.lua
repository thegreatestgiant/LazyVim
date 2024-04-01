return {
  "olexsmir/gopher.nvim",
  config = function(_, opts)
    require("gopher").setup(opts)
    require("gopher.dap").setup()
    require("config.loadmappings").load_mappings("gopher")
  end,
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
}
