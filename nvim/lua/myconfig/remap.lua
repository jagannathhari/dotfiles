vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>re","@:")


-- changin buffer
vim.keymap.set('n', '<C-J>', ':bprev<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-K>', ':bnext<CR>', {noremap = true, silent = true})


--coderunner 
vim.keymap.set("n" , "<F5>" , ":w<CR>:RunFile<CR>" ,{noremap = true, silent = true})
vim.keymap.set("i", "<F5>", "<ESC>:w<CR>:RunFile<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rr', ':-r!skelten %<CR>',{ noremap = true, silent = false })



vim.api.nvim_set_keymap('n', '<Tab>', '>>_', { noremap = true })
vim.api.nvim_set_keymap('n', '<S)-Tab>', '<<_', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-D>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<F4>', vim.cmd.UndotreeToggle)
