return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local keys = { "j", "k", "l", ";" }
    for idx, key in ipairs(keys) do
      vim.keymap.set("n", string.format("<leader>a%s", key), function()
        harpoon:list():replace_at(idx)
      end)
    end

    for idx, key in ipairs({ "j", "k", "l", ";" }) do
      vim.keymap.set("n", string.format("<leader>%s", key), function()
        harpoon:list():select(idx)
      end)
    end
  end,
}
