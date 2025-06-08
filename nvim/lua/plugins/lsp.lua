return {
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'saadparwaiz1/cmp_luasnip'},
	{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", branch = 'master'},
	{'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = {'nvim-lua/plenary.nvim'}},
	{'windwp/nvim-autopairs', event = "InsertEnter", config = true},
	{'nvim-lualine/lualine.nvim'},
	{'nvim-tree/nvim-web-devicons'},
}
