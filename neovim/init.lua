local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

require("user.plugins")
require("user.null-ls")
require("user.cmp")
require("user.bufferline")
require("user.keymaps")
require("user.lualine")
require("user.telescope")
require("user.treesitter")
require("user.nvim-tree")
require("user.shade")

vim.cmd([[
try
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
vim.cmd([[set completeopt=menu,menuone,noselect]])

vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.ts = 2
vim.o.sw = 2
vim.o.sts = 2
vim.o.cmdheight = 1
vim.o.signcolumn = "yes"
vim.o.updatetime = 100
vim.o.mouse = "a"
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

local signs = {
	Error = " ",
	Warn = " ",
	Hint = " ",
	Info = " ",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
