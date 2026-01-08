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
        "OXY2DEV/markview.nvim",
        lazy = false,
        opts = {
            html = {
                enabled = false,
            },
            latex = {
                enabled = false,
            },
            typst = {
                enabled = false,
            },
            preview = {
                icon_provider = "nvim-web-devicons",
                -- modes = { "n", "no", "c", "v", "i" },
            }
        }
    }
}
