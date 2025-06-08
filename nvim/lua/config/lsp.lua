local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- to learn how to use mason.nvim
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({
                capabilities = lsp_capabilities,
            })
        end,
    },
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<ESC>'] = cmp.mapping.abort(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})

require("lualine").setup {
    options = { theme = "gruvbox" }
}

local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
if not vim.loop.fs_stat(pipepath) then
    vim.fn.serverstart(pipepath)
end

vim.lsp.enable('gdscript')
