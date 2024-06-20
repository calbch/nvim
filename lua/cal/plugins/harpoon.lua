return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    for _, idx in ipairs({ 1, 2, 3, 4 }) do
      vim.keymap.set("n", string.format("<leader>h%d", idx), function()
        harpoon:list():replace_at(idx)
      end)
    end

    for _, idx in ipairs({ 1, 2, 3, 4 }) do
      vim.keymap.set("n", string.format("<leader>%d", idx), function()
        harpoon:list():select(idx)
      end)
    end
  end,
}
