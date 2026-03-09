-- lua/tokyocity/groups/treesitter.lua

return function(colors, opts)
    local styles = (opts and opts.styles) or {}

    return {
        -- Core
        ["@comment"] = { fg = colors.ui.comment, italic = styles.comments or false },

        ["@variable"] = { fg = colors.syntax.variable, italic = styles.variables or false },
        ["@variable.builtin"] = { fg = colors.syntax.builtin },

        ["@constant"] = { fg = colors.syntax.constant },
        ["@constant.builtin"] = { fg = colors.syntax.builtin },

        ["@string"] = { fg = colors.syntax.string },
        ["@string.escape"] = { fg = colors.syntax.constant },
        ["@string.special"] = { fg = colors.syntax.constant },

        ["@number"] = { fg = colors.syntax.number },
        ["@boolean"] = { fg = colors.syntax.number },

        ["@keyword"] = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        ["@keyword.function"] = { fg = colors.syntax.keyword, bold = styles.keywords or false },
        ["@keyword.return"] = { fg = colors.syntax.keyword, bold = styles.keywords or false },

        ["@function"] = { fg = colors.syntax.func, italic = styles.functions or false },
        ["@function.builtin"] = { fg = colors.syntax.func },
        ["@function.call"] = { fg = colors.syntax.func },

        ["@method"] = { fg = colors.syntax.func, italic = styles.functions or false },
        ["@method.call"] = { fg = colors.syntax.func },

        ["@type"] = { fg = colors.syntax.type, italic = styles.types or false },
        ["@type.builtin"] = { fg = colors.syntax.type },
        ["@constructor"] = { fg = colors.syntax.type },

        ["@module"] = { fg = colors.syntax.namespace },
        ["@namespace"] = { fg = colors.syntax.namespace },

        ["@macro"] = { fg = colors.syntax.macro },

        -- Members (light accent)
        ["@parameter"] = { fg = colors.syntax.member },
        ["@property"] = { fg = colors.syntax.member },
        ["@field"] = { fg = colors.syntax.member },
        ["@variable.member"] = { fg = colors.syntax.member },

        -- Punctuation / operators
        ["@operator"] = { fg = colors.fg.primary },
        ["@punctuation"] = { fg = colors.syntax.punct },
        ["@punctuation.delimiter"] = { fg = colors.syntax.punct },
        ["@punctuation.bracket"] = { fg = colors.syntax.punct },
    }
end
