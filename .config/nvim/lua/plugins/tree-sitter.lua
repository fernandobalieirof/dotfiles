---@diagnostic disable: missing-fields
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"angular",
				"lua",
				"typescript",
				"go",
				"rust",
				"markdown",
				"markdown_inline",
				"toml",
			},
			ignore_install = {
				"javascript",
			},
			highlight = {
				enabled = true
			},
			ident= {
				enabled = true
			},
			auto_install = true
		})


	end
}
