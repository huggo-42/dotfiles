return {
  "kndndrj/nvim-dbee",
  dependencies = { "MunifTanjim/nui.nvim", },
  build = function()
    require("dbee").install()
  end,
  config = function()
    require("dbee").setup({
      result = {
        mappings = {
          { key = "n", mode = "", action = "page_next" },
          { key = "p", mode = "", action = "page_prev" },
        },
      },
    })
  end,
}
