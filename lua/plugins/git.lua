return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true,
			on_attach = function(bufnr)
				local gs = require("gitsigns")
				vim.keymap.set("n", "]c", gs.next_hunk, { buffer = bufnr })
				vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr })
			end,
		},
	},

	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		keys = { { "<leader>gg", "<cmd>LazyGit<cr>" } },
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "sindrets/diffview.nvim", cmd = { "DiffviewOpen", "DiffviewFileHistory" } },
}
