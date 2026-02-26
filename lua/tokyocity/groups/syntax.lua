-- lua/tokyocity/groups/syntax.lua

return function(colors)
    return {
        Comment = { fg = colors.fg.subtle, italic = true },
        String = { fg = colors.syntax.string },
        Keyword = { fg = colors.syntax.keyword },
        Function = { fg = colors.syntax.func },
        Type = { fg = colors.syntax.type },
        Constant = { fg = colors.syntax.constant },
        Identifier = { fg = colors.fg.primary },
        Number = { fg = colors.syntax.constant },
        Boolean = { fg = colors.syntax.constant },
    }
end
