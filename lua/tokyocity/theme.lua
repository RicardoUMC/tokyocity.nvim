local M = {}

local config = require("tokyocity.config")

function M.load()
    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "tokyocity"

    local palette = require("tokyocity.palette")
    local colors = require("tokyocity.colors").setup(palette, config.options)

    local groups = {}

    vim.list_extend(groups, require("tokyocity.groups.editor")(colors))
    vim.list_extend(groups, require("tokyocity.groups.syntax")(colors))
    vim.list_extend(groups, require("tokyocity.groups.treesitter")(colors))
    vim.list_extend(groups, require("tokyocity.groups.lsp")(colors))

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
