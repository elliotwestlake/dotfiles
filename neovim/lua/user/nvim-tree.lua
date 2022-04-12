local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
	update_focused_file = {
		enable = true,
	},
	diagnostics = {
		enable = true,
	},
	view = {
		width = 30,
		height = 30,
		hide_root_folder = false,
		side = "left",
		auto_resize = true,
		number = false,
		relativenumber = false,
	},
})

vim.g.nvim_tree_icons = {
	default = "",
}
