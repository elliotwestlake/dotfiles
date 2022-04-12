local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
nvim_treesitter.setup({
	ensure_installed = {
		"typescript",
		"tsx",
		"javascript",
		"lua",
		"json",
		"yaml",
		"bash",
	},

	sync_install = false,

	context_commentstring = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
