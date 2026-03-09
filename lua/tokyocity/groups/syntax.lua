-- lua/tokyocity/groups/syntax.lua

return function(colors, opts)
    local styles = (opts and opts.styles) or {}

    return {
        -- Core syntax
        Comment = { fg = colors.ui.comment, italic = styles.comments or false },
        Identifier = { fg = colors.syntax.variable },
        Variable = { fg = colors.syntax.variable, italic = styles.variables or false },

        Keyword = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        Statement = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        Conditional = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        Repeat = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        Label = { fg = colors.syntax.keyword, bold = styles.keywords or false },

        Function = { fg = colors.syntax.func, italic = styles.functions or false },

        Type = { fg = colors.syntax.type, italic = styles.types or false },
        StorageClass = { fg = colors.syntax.type, italic = styles.types or false },
        Structure = { fg = colors.syntax.type, italic = styles.types or false },
        Typedef = { fg = colors.syntax.type, italic = styles.types or false },

        String = { fg = colors.syntax.string },
        Character = { fg = colors.syntax.string },

        Constant = { fg = colors.syntax.constant },
        Number = { fg = colors.syntax.number },
        Boolean = { fg = colors.syntax.number },
        Float = { fg = colors.syntax.number },

        Operator = { fg = colors.fg.primary },

        Delimiter = { fg = colors.fg.muted },

        -- Special
        Special = { fg = colors.syntax.constant },
        SpecialChar = { fg = colors.syntax.constant },
        Tag = { fg = colors.syntax.keyword },
    }
end
