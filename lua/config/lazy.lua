local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

require("config.install")(lazypath)

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins" },
})
