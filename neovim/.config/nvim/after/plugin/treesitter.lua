require'nvim-treesitter.configs'.setup({
  install_dir = vim.fn.stdpath('data') .. '/site',
})


  -- A list of parser names, or "all" (the five listed parsers should always be installed)
require'nvim-treesitter.configs'.install({
"c", "lua", "vim", "vimdoc", "query",  "python", "rust" , "haskell", "latex", "yaml"
})

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
