local M = {}

local config = require("tokyocity.config")

local function merge_groups(dst, src)
    for name, opts in pairs(src or {}) do
        dst[name] = opts
    end
    return dst
end

function M.load()
    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "tokyocity"

    local palette = require("tokyocity.palette")
    local colors = require("tokyocity.colors").setup(palette, config.options)
    local opts = config.options

    local groups = {}

    merge_groups(groups, require("tokyocity.groups.editor")(colors, opts))
    merge_groups(groups, require("tokyocity.groups.syntax")(colors, opts))
    merge_groups(groups, require("tokyocity.groups.treesitter")(colors, opts))
    merge_groups(groups, require("tokyocity.groups.lsp")(colors, opts))

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
