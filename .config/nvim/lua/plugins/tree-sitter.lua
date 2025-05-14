---@diagnostic disable: missing-fields
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"angular",
				"lua",
				"typescript",
				"go",
				"gleam",
				"rust",
				"markdown",
				"markdown_inline",
				"toml",
			},
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
				custom_captures = {},
				disable = {}
			},

		})

	end
}
