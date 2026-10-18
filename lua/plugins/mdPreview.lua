return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		-- vim.cmd("Lazy load markdown-preview.nvim")
		vim.fn["mkdp#util#install"]()
	end,
	init = function()
		vim.g.mkdp_auto_start = 1
		vim.g.mkdp_auto_close = 0
		vim.g.mkdp_refresh_slow = 0
		vim.g.mkdp_command_for_global = 0
		vim.g.mkdp_open_to_the_world = 0
		vim.g.mkdp_open_ip = ""
		vim.g.mkdp_browser = "/usr/bin/firefox"
		vim.g.mkdp_echo_preview_url = 1
		vim.g.mkdp_browserfunc = ""

		-- -- " options for Markdown rendering
		-- -- " mkit: markdown-it options for rendering
		-- -- " katex: KaTeX options for math
		-- -- " uml: markdown-it-plantuml options
		-- -- " maid: mermaid options
		-- -- " disable_sync_scroll: whether to disable sync scroll, default 0
		-- -- " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
		-- -- "   middle: means the cursor position is always at the middle of the preview page
		-- -- "   top: means the Vim top viewport always shows up at the top of the preview page
		-- -- "   relative: means the cursor position is always at relative positon of the preview page
		-- -- " hide_yaml_meta: whether to hide YAML metadata, default is 1
		-- -- " sequence_diagrams: js-sequence-diagrams options
		-- -- " content_editable: if enable content editable for preview page, default: v:false
		-- -- " disable_filename: if disable filename header for preview page, default: 0
		--
		-- -- vim.g.mkdp_preview_options = {
		-- --      ('mkit'): {},
		-- --      'katex': {},
		-- --      'uml': {},
		-- --      'maid': {},
		-- --      'disable_sync_scroll': 0,
		-- --      'sync_scroll_type': 'middle',
		-- --      'hide_yaml_meta': 1,
		-- --      'sequence_diagrams': {},
		-- --      'flowchart_diagrams': {},
		-- --      'content_editable': v:false,
		-- --      'disable_filename': 0,
		-- --      'toc': {}
		-- --      }
		--
		-- -- " use a custom Markdown style. Must be an absolute path
		-- -- " like '/Users/username/markdown.css' or expand('~/markdown.css')
		-- vim.g.mkdp_markdown_css = ""
		--
		-- -- " use a custom highlight style. Must be an absolute path
		-- -- " like '/Users/username/highlight.css' or expand('~/highlight.css')
		-- vim.g.mkdp_highlight_css = ""
		--
		-- -- " use a custom port to start server or empty for random
		vim.g.mkdp_port = "8080"
		--
		-- -- " preview page title
		-- -- " ${name} will be replace with the file name
		-- vim.g.mkdp_page_title = "「${name}」"
		--
		-- -- " use a custom location for images
		-- -- vim.g.mkdp_images_path = /home/user/.markdown_images
		--
		-- -- " recognized filetypes
		-- -- " these filetypes will have MarkdownPreview... commands
		-- vim.g.mkdp_filetypes = "markdown"
		--
		-- -- " set default theme (dark or light)
		-- -- " By default the theme is defined according to the preferences of the system
		-- vim.g.mkdp_theme = "dark"
		--
		-- -- " combine preview window
		-- -- " default: 0
		-- -- " if enable it will reuse previous opened preview window when you preview markdown file.
		-- -- " ensure to set vim.g.mkdp_auto_close = 0 if you have enable this option
		-- vim.g.mkdp_combine_preview = 0
		--
		-- -- " auto refetch combine preview contents when change markdown buffer
		-- -- " only when.g.mkdp_combine_preview is 1
		-- vim.g.mkdp_combine_preview_auto_refresh = 1
	end,
}
