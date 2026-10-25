return {
	"github/copilot.vim",
	init = function()
		vim.g.copitol_no_tab_map = true
		vim.g.copilot_filetypes = {
			["*"] = true,
			["markdown"] = false,
			["text"] = false,
			["latex"] = false,
		}
	end,
}
