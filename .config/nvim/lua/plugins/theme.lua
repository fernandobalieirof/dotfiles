-- function TransparentGb(color)
-- 	color = color or "tokyonight-storm"
-- 	vim.cmd.colorscheme(color)
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
-- 	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
-- end

-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		opts = {
-- 			transparent = true,
-- 			styles = {
-- 				sidebars = "transparent",
-- 				floats = "transparent",
-- 			},
-- 		},
--
-- 		config = function ()
-- 			-- theme can be:
-- 			-- catppuccin
-- 			-- dracula
-- 			-- rose-pine
-- 			TransparentGb()
-- 			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
--
-- 		end
-- 	}
-- }
-- catppuccin theme
-- return {
--     "catppuccin/nvim",
--     lazy = true,
--     name = "catppuccin",
--     priority = 1000,
--
--     config = function()
-- 	    vim.cmd.colorscheme "catppuccin"
--     end
-- }

-- rose pine theme
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon"
		})
		vim.cmd("colorscheme rose-pine")
	end
}

-- tokyo night theme
-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		opts = {
-- 			transparent = true,
-- 			styles = {
-- 				sidebars = "transparent",
-- 				floats = "transparent",
-- 			},
-- 		},
-- 	},
-- }

-- dracula theme
-- return { 
-- 	"Mofiqul/dracula.nvim",
-- 	config = function ()
-- 		vim.cmd("colorscheme dracula")
-- 	end
--
-- }
