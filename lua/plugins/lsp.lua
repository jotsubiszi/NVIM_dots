return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason-org/mason-lspconfig.nvim" },
	config = function()
		vim.lsp.config("*", {
			capabilities = require("blink.cmp").get_lsp_capabilities(),
		})

		vim.lsp.config("lua_ls", {
			settings = { Lua = { hint = { enable = true } } },
		})

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
	end,
}
