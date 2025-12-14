vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.scrolloff = 8
vim.opt.splitright = true

vim.cmd("language en_US.utf8")
vim.cmd("colorscheme gruvbox")

require 'typst-preview'.setup {
    open_cmd = "firefox --new-window %s"
}

local rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.add_rule(rule("$", "$", "typst"))
npairs.add_rule(rule("```", "```", "typst"))

require('nvim-treesitter.configs').setup({
    hightlight = { enable = true },
})

require("lualine").setup {
    options = {
        theme = "gruvbox",
        section_separators = '',
        component_separators = '|',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'lsp_status', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}

require("oil").setup()

vim.o.tabline = "%!v:lua.Tabline()"

vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })

vim.api.nvim_set_hl(0, "TabLinePillActive",   { fg = "#edbbb2", bg = "#98971a" })
vim.api.nvim_set_hl(0, "TabLinePillInactive", { fg = "#ebdbb2", bg = "#928374" })

function _G.Tabline()
  local s = ""
  local tabs = vim.api.nvim_list_tabpages()
  local current = vim.api.nvim_get_current_tabpage()

  for i, tab in ipairs(tabs) do
	local is_active = (tab == current)

	local hl_text  = is_active and "%#TabLinePillActive#"   or "%#TabLinePillInactive#"
    
	s = s .. hl_text .. " " .. i .. " "
	s = s .. "%#TabLine# "
  end

  return s
end
