return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("jiangmiao/auto-pairs")

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use({ "folke/tokyonight.nvim", branch = "main" })

	use("sunjon/shade.nvim")

	use({
		"kyazdani42/nvim-tree.lua",
	})

	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
