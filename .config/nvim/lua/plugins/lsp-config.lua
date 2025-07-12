return {
    {
        "williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function()
	    require("mason-lspconfig").setup({
		    ensure_installed = {
				"angularls",
			    "lua_ls",
			    "ts_ls",
			    "gopls", -- golang
			    "rust_analyzer", -- rust
				"emmet_language_server", -- better html
				"marksman",
				"sqls",
				"zls",
				"svelte",
				"tsp_server",
		    },
	    })
    end
    },
    {
	    "neovim/nvim-lspconfig",
	    config = function()
		    local lspconfig = require("lspconfig")
			-- local capabilities = vim.lsp.protocol.make_client_capabilities()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
			vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			require('lspconfig').lua_ls.setup { capabilities = capabilities }


			lspconfig.angularls.setup({})
			lspconfig.tsp_server.setup({})
		    lspconfig.lua_ls.setup({})
		    lspconfig.ts_ls.setup({})

			-- svelte setup
			local svelte_lsp_capabilities = vim.tbl_deep_extend("force", {}, capabilities)
			   lspconfig.svelte.setup({
				   capabilities = svelte_lsp_capabilities,
				   filetypes = {"svelte"},
				   settings = {
					   svelte = {
						   plugin = {
							   svelte = {
								   defaultScriptLanguage = "ts",
							   }
						   }
					   }
				   }
			})
			vim.lsp.enable("svelte")



		    lspconfig.gopls.setup({})
			lspconfig.gleam.setup({})
		    lspconfig.rust_analyzer.setup({})
		    lspconfig.zls.setup({})
			lspconfig.emmet_language_server.setup({
				capabilities = capabilities,
				filetypes = {
					"css",
					"html",
					"javascript",
					"javascriptreact",
					"sass",
					"scss",
					"typescriptreact",
					-- "svelte",
				},

			})
			lspconfig.marksman.setup({})


	    end
    },
}
