return {
    "williamboman/nvim-lsp-installer",
    dependencies = { "neovim/nvim-lspconfig" },
    event = { "BufReadPre", "BufNewFile" },
    config=function()
        require("nvim-lsp-installer").setup {}
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup{}
        lspconfig.pyright.setup{}
    end
  }

