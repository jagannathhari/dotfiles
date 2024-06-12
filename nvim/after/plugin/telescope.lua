
local actions = require "telescope.actions"
require("telescope").setup {
    defaults = {
      sorting_strategy = "ascending",
      layout_strategy = "bottom_pane",
      results_title = "",
      file_ignore_patterns = { "node_modules",".pyc" },
      borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
      prompt_prefix=":",
      preview=false,
      layout_config = {
         prompt_position = "bottom",
             height = 10,
      },
},
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["<c-d>"] = actions.delete_buffer ,
        }
      }
    },

  }
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>jf', builtin.find_files, {})
vim.keymap.set('n', '<leader>jb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>jg', builtin.live_grep, {})
