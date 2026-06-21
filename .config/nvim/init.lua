vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true  
vim.g.mapleader = " "     


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
	lazypath
})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{ import = "gas.plugins" }}, {
  checker = { enabled = false },
  change_detection = { enabled = false }
})
