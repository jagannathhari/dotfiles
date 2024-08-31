return {
  {
    "phaazon/hop.nvim",
    branch = 'v2',  -- or the branch you use
    cmd = { "HopChar1", "HopChar2", "HopLine" },  -- List commands that will trigger loading
    keys = {
      { "f", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true}) end, desc = "Hop Char1 After Cursor" },
      { "F", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true}) end, desc = "Hop Char1 Before Cursor" },
      { "t", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1}) end, desc = "Hop Char1 After Cursor (offset)" },
      { "T", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1}) end, desc = "Hop Char1 Before Cursor (offset)" },
      { "<leader>w", function() require("hop").hint_words() end, desc = "Hop Words" },
      { "<leader>f", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR}) end, desc = "Hop Char1 After Cursor" },
      { "<leader>F", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR}) end, desc = "Hop Char1 Before Cursor" },
      { "<leader>t", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR}) end, desc = "Hop Char1 After Cursor" },
      { "<leader>T", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR}) end, desc = "Hop Char1 Before Cursor" },
    },
    config = function()
      require("hop").setup()
    end,
  }
}

