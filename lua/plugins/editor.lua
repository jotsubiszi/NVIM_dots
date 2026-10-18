return {
	{ "folke/which-key.nvim", event = "VeryLazy", opts = {} },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
		opts = { filesystem = { follow_current_file = { enabled = true } } },
	},
	{ "numToStr/Comment.nvim", opts = {} },
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
	{
		"folke/flash.nvim",
		keys = { {
			"s",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
		} },
	},
}
