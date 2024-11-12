return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,

    init = function()
      -- vim.o.background = "light"
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  --   {
  --     dir = "~/Code/1980_sun",
  --     dependencies = { "rktjmp/lush.nvim" },
  --     lazy = false,
  --     priority = 1000,
  --
  --     init = function()
  --       vim.cmd.colorscheme("1980_sun")
  --     end,
  --   },
  --   {
  --     "slugbyte/lackluster.nvim",
  --     lazy = false,
  --     priority = 1000,
  --     init = function()
  --       vim.cmd.colorscheme("lackluster")
  --       -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
  --       -- vim.cmd.colorscheme("lackluster-mint")
  --     end,
  --   },
  --   {
  --     "zenbones-theme/zenbones.nvim",
  --     dependencies = { "rktjmp/lush.nvim" },
  --     lazy = false,
  --     priority = 1000,
  --     init = function()
  --       vim.o.background = "dark"
  --       vim.cmd.colorscheme("zenwritten")
  --       vim.g.zenwritten = { lightness = "dim" }
  --     end,
  --   },
}
