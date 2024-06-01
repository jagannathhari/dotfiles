-- https://neovimcraft.com/plugin/smoka7/hop.nvim/
-- place this in one of your configuration file(s)
local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set(
    "",
    "f",
    function()
        hop.hint_char1({direction = directions.AFTER_CURSOR, current_line_only = true})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "F",
    function()
        hop.hint_char1({direction = directions.BEFORE_CURSOR, current_line_only = true})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "t",
    function()
        hop.hint_char1({direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "T",
    function()
        hop.hint_char1({direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "<leader>w",
    function()
        hop.hint_words()
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "<leader>f", 
    function() 
        hop.hint_char1({direction = directions.AFTER_CURSOR})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "<leader>F", 
    function() 
        hop.hint_char1({direction = directions.BEFORE_CURSOR})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "<leader>t", 
    function() 
        hop.hint_char1({direction = directions.AFTER_CURSOR})
    end,
    {remap = true,silent=true}
)

vim.keymap.set(
    "",
    "<leader>T", 
    function() 
        hop.hint_char1({direction = directions.BEFORE_CURSOR})
    end,
    {remap = true,silent=true}
)

