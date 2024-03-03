require("nvim-lsp-installer").setup {}
require'lspconfig'.clangd.setup{
  
}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.lua_ls.setup{
Lua = {
      runtime = {
        version = 'LuaJIT',
      },

}
}

require'lspconfig'.pyright.setup{}


-- Map the function to a key combination
vim.api.nvim_set_keymap('n', '<A-.>', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Keybinding for "Find References"
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })


