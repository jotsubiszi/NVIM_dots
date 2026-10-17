return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-ui-select.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
		{ "<leader>fs", "<cmd>Telescope grep_string<cr>" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules", ".git/" },
			},
			extensions = {
				["ui-select"] = { require("telescope.themes").get_dropdown() },
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}
