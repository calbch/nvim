vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight text yank",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    if vim.fn.argc() == 0 and vim.fn.line2byte(1) == -1 then
      local ascii_arr = [[
                        .__  ___.            .__     
          ____  _____   |  | \_ |__    ____  |  |__  
        _/ ___\ \__  \  |  |  | __ \ _/ ___\ |  |  \ 
        \  \___  / __ \_|  |__| \_\ \\  \___ |   Y  \
         \___  >(____  /|____/|___  / \___  >|___|  /
             \/      \/           \/      \/      \/ 
      ]]

      local ascii_art = vim.split(ascii_arr, "\n")

      -- Get the editor's width and height
      local width = vim.api.nvim_get_option("columns")
      local height = vim.api.nvim_get_option("lines")

      -- Calculate center
      local row_start = math.floor((height - #ascii_art) / 2)
      local col_start = math.floor((width - #ascii_art[1]) / 2)

      -- Clear the buffer
      vim.api.nvim_buf_set_lines(0, 0, -1, false, {})

      -- Add padding rows
      for _ = 1, row_start do
        vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
      end

      -- Set the ASCII art in the buffer
      for _, line in ipairs(ascii_art) do
        local padded_line = string.rep(" ", col_start) .. line
        vim.api.nvim_buf_set_lines(0, -1, -1, false, { padded_line })
      end

      -- Set buffer options
      vim.bo.buftype = "nofile"
      vim.bo.bufhidden = "wipe"
      vim.bo.swapfile = false
      vim.bo.modifiable = false

      -- Hide line numbers
      vim.wo.number = false
      vim.wo.relativenumber = false

      -- Hide the cursor
      vim.opt.guicursor = "n:none"
    end
  end,
})
