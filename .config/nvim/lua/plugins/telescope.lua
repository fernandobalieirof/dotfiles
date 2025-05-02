return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},


		config = function()
			-- local telescope = require("telescope")
			-- local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")
			-- local actions = require("telescope.actions"),
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

			-- telescope.setup({
			-- 	mappings = {
			--
			-- 		n = {
			-- 			["<S-j>"] = actions.move_selection_next,
			-- 			["<S-k>"] = actions.move_selection_previous
			-- 		},
			-- 		i = {
			-- 			["<S-j>"] = actions.move_selection_next,
			-- 			["<S-k>"] = actions.move_selection_previous
			-- 		},
			-- 	}
			-- })
		end

    },
    -- {
    --  'nvim-telescope/telescope-ui-select.nvim',
    --  config = function()
    --   -- This is your opts table
    --   require("telescope").setup({
    --    extensions = {
    --     ["ui-select"] = {
    -- 	    require("telescope.themes").get_dropdown {
    -- 	    }
    --     }
    --    }
    --   })
    --   require("telescope").load_extension("ui-select")
    --  end
    -- }
}
