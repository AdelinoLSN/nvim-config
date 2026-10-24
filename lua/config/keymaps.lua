vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", function()
  local current_win = vim.api.nvim_get_current_win()
  local current_buf = vim.api.nvim_win_get_buf(current_win)

  if vim.bo[current_buf].filetype == "neo-tree" then
    vim.cmd("quit")
    return
  end

  local other_windows = vim.tbl_filter(function(win)
    local buf = vim.api.nvim_win_get_buf(win)
    return win ~= current_win and vim.bo[buf].filetype ~= "neo-tree"
  end, vim.api.nvim_list_wins())

  if #other_windows == 0 then
    vim.cmd("Neotree show")
    vim.cmd("bdelete")
  else
    vim.cmd("bdelete")
  end
end, { desc = "Close buffer" })

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<CR>", { desc = "Focus" })

-- Telescope
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Find text" })

vim.keymap.set("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Help" })
