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

    -- Plugin integrations
    local integrations = opts.integrations or {}
    local plugin_modules = {
        { key = "gitsigns",  mod = "tokyocity.groups.plugins.gitsigns" },
        { key = "telescope", mod = "tokyocity.groups.plugins.telescope" },
        { key = "cmp",       mod = "tokyocity.groups.plugins.cmp" },
        { key = "lualine",   mod = "tokyocity.groups.plugins.lualine" },
    }
    for _, p in ipairs(plugin_modules) do
        if integrations[p.key] ~= false then
            local ok, mod = pcall(require, p.mod)
            if ok then
                if type(mod) == "function" then
                    merge_groups(groups, mod(colors, opts))
                elseif type(mod) == "table" and type(mod.load) == "function" then
                    merge_groups(groups, mod.load(colors, opts))
                end
            end
        end
    end

    for group, hl_opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl_opts)
    end
end

return M
