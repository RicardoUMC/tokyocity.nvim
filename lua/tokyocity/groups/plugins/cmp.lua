-- lua/tokyocity/groups/plugins/cmp.lua

return function(colors, opts)
    return {
        -- Abbreviation
        CmpItemAbbr = { fg = colors.fg.primary },
        CmpItemAbbrDeprecated = { fg = colors.fg.muted, strikethrough = true },
        CmpItemAbbrMatch = { fg = colors.syntax.func, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.syntax.func },

        -- Menu
        CmpItemMenu = { fg = colors.fg.muted },

        -- Kind (generic)
        CmpItemKind = { fg = colors.fg.secondary },

        -- Kind-specific
        CmpItemKindFunction = { fg = colors.syntax.func },
        CmpItemKindMethod = { fg = colors.syntax.func },
        CmpItemKindVariable = { fg = colors.syntax.variable },
        CmpItemKindField = { fg = colors.syntax.variable },
        CmpItemKindProperty = { fg = colors.syntax.variable },
        CmpItemKindKeyword = { fg = colors.syntax.keyword },
        CmpItemKindText = { fg = colors.fg.muted },
        CmpItemKindSnippet = { fg = colors.fg.muted },
        CmpItemKindClass = { fg = colors.syntax.type },
        CmpItemKindInterface = { fg = colors.syntax.type },
        CmpItemKindStruct = { fg = colors.syntax.type },
        CmpItemKindEnum = { fg = colors.syntax.type },
        CmpItemKindTypeParameter = { fg = colors.syntax.type },
        CmpItemKindModule = { fg = colors.syntax.namespace },
        CmpItemKindConstant = { fg = colors.syntax.constant },
        CmpItemKindEnumMember = { fg = colors.syntax.constant },
        CmpItemKindValue = { fg = colors.syntax.constant },
        CmpItemKindUnit = { fg = colors.syntax.number },
        CmpItemKindColor = { fg = colors.syntax.number },
        CmpItemKindFile = { fg = colors.fg.secondary },
        CmpItemKindFolder = { fg = colors.fg.secondary },
        CmpItemKindReference = { fg = colors.syntax.builtin },
        CmpItemKindEvent = { fg = colors.syntax.punct },
        CmpItemKindOperator = { fg = colors.syntax.punct },
    }
end
