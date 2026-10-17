return {
	{
		"williamboman/mason.nvim",
		config = true, -- wywołuje require("mason").setup()
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"clangd",
			},
			automatic_installation = true,
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua", -- formatter lua
				"prettier", -- formatter JS/TS/JSON/MD
				"black", -- formatter python
				"shfmt",
				"eslint_d",
			},
		},
	},
}
