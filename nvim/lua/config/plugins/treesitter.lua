  return { "nvim-treesitter/nvim-treesitter",
  event = "BufReadPost", 
  config=function()
    require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- enable = false,
    additional_vim_regex_highlighting = false,
  },
}
end
  }