return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = false,
    filesystem = {
      hijack_netrw_behavior = "open_current",
      follow_current_file = {
        enabled = true,
      },
    },
    window = {
      position = "left",
      width = 30,
    },
  },
}
