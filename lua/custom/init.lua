vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
  },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
  },
  cache_enable = 0,
}

local opt = vim.opt

opt.mouse = ""

vim.api.nvim_command('set autoindent noexpandtab tabstop=4 shiftwidth=4')
vim.api.nvim_command('autocmd BufWritePre *.js Neoformat')
vim.api.nvim_command('autocmd FileType javascript setlocal formatprg=prettier')
