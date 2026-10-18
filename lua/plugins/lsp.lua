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
	end,
}
