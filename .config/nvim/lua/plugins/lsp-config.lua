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
		    },
	    })
    end
    },
    {
	    "neovim/nvim-lspconfig",
	    config = function()
		    local lspconfig = require("lspconfig")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()


			lspconfig.angularls.setup({})
		    lspconfig.lua_ls.setup({})
		    lspconfig.ts_ls.setup({})
		    lspconfig.gopls.setup({})
		    lspconfig.rust_analyzer.setup({})
			lspconfig.emmet_language_server.setup({
				capabilities = capabilities,
				filetypes = {
					"css",
					"eruby",
					"html",
					"javascript",
					"javascriptreact",
					"sass",
					"scss",
					"svelte",
					"typescriptreact",
					"vue",
				},

			})
			lspconfig.marksman.setup({})
			lspconfig.sqls.setup({"sqls", "postgres"})


		    vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
		    vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
		    vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
		    capabilities = require("blink.cmp").get_lsp_capabilities()
		    require('lspconfig').lua_ls.setup { capabilities = capabilities }

	    end
    },
}
