return {
  "saghen/blink.cmp",
  version = "*",

  opts = {
    keymap = {
      -- preset = "default",
      preset = "enter",

      ["<M-'>"] = {
        "show",
        "show_documentation",
        "hide_documentation",
      },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      documentation = {
        auto_show = true,
      },
    },

    sources = {
      default = { "lsp", "path", "buffer" },
    },
  },
}
