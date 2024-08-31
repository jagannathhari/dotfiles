return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.4',
    dependencies = { "nvim-lua/plenary.nvim" },
keys = {
      { "<leader>jf", function() require('telescope.builtin').find_files() end, desc = "Find Files" },
      { "<leader>jb", function() require('telescope.builtin').buffers() end, desc = "Buffers" },
      { "<leader>ps", function() 
          require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) 
        end, desc = "Grep String" 
      },
      { "<leader>vh", function() require('telescope.builtin').help_tags() end, desc = "Help Tags" },
      { "<leader>jg", function() require('telescope.builtin').live_grep() end, desc = "Live Grep" },
    },  
    config = function()

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
end
}
