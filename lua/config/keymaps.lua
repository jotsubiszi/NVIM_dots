vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = ".mdPreview toggle" })
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", { desc = ".mdPreview stop" })

vim.keymap.set("n", "\\", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree" })

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find_files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live_grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help_tags" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Oldfiles" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", { desc = "Grep_string" })

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })

-- this looks veri nice, gotta use it with keymaps above
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local map = function(keys, fn, desc)
			vim.keymap.set("n", keys, fn, { buffer = ev.buf, desc = "LSP: " .. desc })
		end
		map("K", vim.lsp.buf.definition, "go to definition")
		map("<leader>ca", vim.lsp.buf.code_action, "Code action")
		map("gd", vim.lsp.buf.definition, "buf def")
		map("gr", vim.lsp.buf.references, "buf ref")
		map("<leader>rn", vim.lsp.buf.rename, "buf rename")
		map("[d", vim.diagnostic.goto_prev, "diag goto prev")
		map("]d", vim.diagnostic.goto_next, "diag goto next")
	end,
})
