return {
    {
        'chomosuke/typst-preview.nvim',
        ft = 'typst',
        version = '1.*',
        opts = {
            open_cmd = "zen-browser --new-window %s"
        }
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        ft = 'markdown',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        opts = {
            completion = { lsp = { enabled = true } },
            preset = "obsidian",
            render_modes = { 'n', 'c', 'v', 'i', },
        },
    }
}
