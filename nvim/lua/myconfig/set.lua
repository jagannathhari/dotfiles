vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.fillchars = {eob = " "}

vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.gui_font_default_size = 17
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Anonymous Pro"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function ()
    vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps

local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-=>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-2) end, opts)
vim.keymap.set({'n', 'i'}, "<C-BS>", function() ResetGuiFont() end, opts)


vim.loader.enable()
require("autoclose").setup()


-- Display tabs as '>>' and spaces as '.'
vim.api.nvim_exec([[
  set list
  set listchars=tab:»\ ,space:·
]], false)

vim.api.nvim_exec([[
colorscheme phoenix
]], false)


require'colorizer'.setup()

vim.opt.formatoptions:remove('c') 
vim.opt.formatoptions:remove('r') 
vim.opt.formatoptions:remove('o') 
-- Check if persistent undo is supported
if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand('~/.undodir')
    vim.o.undodir = target_path
    vim.o.undofile = true
end

