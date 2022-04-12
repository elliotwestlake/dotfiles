local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", ".git/" },
		vimgrep_arguments = {
			"rg",
			"--hidden",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--trim", -- add this value
		},
	},
	project = {
		base_dirs = {
			{ "~/github", max_depth = 2 },
		},
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
	},
	pickers = {
		find_files = {
			theme = "ivy",
			hidden = true,
		},
		live_grep = {
			theme = "ivy",
			hidden = true,
		},
	},
})

telescope.load_extension("fzf")
