-- lua/tokyocity/groups/treesitter.lua

return function(colors)
    return {
        ["@keyword"] = { fg = colors.syntax.keyword },
        ["@string"] = { fg = colors.syntax.string },
        ["@function"] = { fg = colors.syntax.func },
        ["@type"] = { fg = colors.syntax.type },
        ["@variable"] = { fg = colors.fg.primary },
        ["@constant"] = { fg = colors.syntax.constant },
    }
end
