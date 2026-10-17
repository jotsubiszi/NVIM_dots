return {
	{
		"mason-org/mason.nvim",
		config = true,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"clangd",
				"ts_ls",
				"gopls",
			},
			automatic_enable = { exclude = { "stylua" } },
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
