return {
	-- 1. Znaki zmian na marginesie (+ / ~ / -) + blame inline
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

	-- 2. Pełny UI do gita w stylu magit/lazygit, wewnątrz Neovima
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		keys = { { "<leader>gg", "<cmd>LazyGit<cr>" } },
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- 3. Diff / historia plików
	{ "sindrets/diffview.nvim", cmd = { "DiffviewOpen", "DiffviewFileHistory" } },
}
