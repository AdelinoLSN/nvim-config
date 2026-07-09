return {
  "monkoose/neocodeium",
  event = "VeryLazy",

  config = function()
    local neocodeium = require("neocodeium")

    neocodeium.setup({
      manual = false,
    })

    vim.keymap.set("i", "<Tab>", function()
      if neocodeium.visible() then
        neocodeium.accept()
        return ""
      end

      return "<Tab>"
    end, { expr = true, silent = true })
  end,
}
