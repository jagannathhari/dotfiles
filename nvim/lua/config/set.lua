local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.ignorecase = true
opt.wrap = false
opt.title= true 
opt.fillchars = {eob = " "}
opt.clipboard = "unnamedplus"
opt.hlsearch = false
opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.gui_font_default_size = 17
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Anonymous Pro"
-- vim.g.gui_font_face = "Shantell Sans Informal"

vim.opt.list = false

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

ResetGuiFont()


local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-=>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-2) end, opts)
vim.keymap.set({'n', 'i'}, "<C-BS>", function() ResetGuiFont() end, opts)

vim.api.nvim_exec([[

    command! ToggleList set list!
    set listchars=tab:»\ ,space:·
]], false)

vim.api.nvim_exec([[
autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=200}
]], false)

vim.opt.formatoptions:remove('c') 
vim.opt.formatoptions:remove('r') 
vim.opt.formatoptions:remove('o') 


require('gitsigns').setup()
require("diffview").setup({
    use_icons = false,
})
