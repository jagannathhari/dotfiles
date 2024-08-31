return {"mbbill/undotree",
keys ={
    { "<F4>", ":w<CR>:UndotreeToggle<CR>", mode = "n", noremap = true, silent = true },
},
config = function()
    if vim.fn.has("persistent_undo") == 1 then
        local target_path = vim.fn.expand('~/.undodir')
        vim.o.undodir = target_path
        vim.o.undofile = true
    end
end
}

