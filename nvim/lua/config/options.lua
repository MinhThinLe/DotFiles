vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Use tab instead of space
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.scrolloff = 8

vim.cmd("colorscheme gruvbox")
vim.cmd("language en_US.utf8")

-- require('peek').setup({
-- 	app = {'firefox', '--new-window'},
--
-- 	syntax = true,
-- })

require 'typst-preview'.setup {
    open_cmd = "firefox %s -P default --class typst-preview"
}

local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.add_rule(Rule("$", "$", "typst"))
npairs.add_rule(Rule("```", "```", "typst"))

require('render-markdown').setup({
    render_modes = { 'n', 's', 'i', 'c', 'no', 'nov' }
})

require('nvim-treesitter.configs').setup({
    hightlight = {
        enable = true,
    }
})
