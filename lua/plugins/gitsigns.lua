return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",

  opts = {},

  config = function(_, opts)
    require("gitsigns").setup(opts)

    local gs = require("gitsigns")

    vim.keymap.set("n", "]h", gs.next_hunk, { desc = "Next Hunk" })
    vim.keymap.set("n", "[h", gs.prev_hunk, { desc = "Previous Hunk" })

    vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "Stage Hunk" })
    vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "Reset Hunk" })
    vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { desc = "Preview Hunk" })
    vim.keymap.set("n", "<leader>hb", gs.blame_line, { desc = "Blame Line" })
  end,
}
