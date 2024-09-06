return {
  "boganworld/crackboard.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("crackboard").setup({
    })
  end,
}
