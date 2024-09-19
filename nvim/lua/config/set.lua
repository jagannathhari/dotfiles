local opt = vim.opt

vim.o.grepprg = 'rg --vimgrep --no-heading --smart-case --max-filesize 50K'

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
opt.incsearch = true

opt.termguicolors = true

opt.swapfile = false
opt.backup = false

opt.splitright = true
opt.splitbelow = true

vim.g.gui_font_default_size = 17
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Anonymous Pro"
-- vim.g.gui_font_face = "Shantell Sans Informal"

opt.list = false

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


vim.schedule(function()
    opt.clipboard = 'unnamedplus'
end)
vim.cmd([[colorscheme quiet]])

if vim.fn.has("persistent_undo") == 1 then
        local target_path = vim.fn.expand('~/.undodir')
        vim.o.undodir = target_path
        vim.o.undofile = true
    end
