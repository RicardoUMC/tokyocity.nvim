-- lua/tokyocity/groups/editor.lua

return function(colors)
    return {
        Normal = { fg = colors.fg.primary, bg = colors.bg.base },
        NormalFloat = { fg = colors.fg.primary, bg = colors.bg.float },

        CursorLine = { bg = colors.bg.overlay },
        CursorColumn = { bg = colors.bg.overlay },

        LineNr = { fg = colors.fg.subtle },
        CursorLineNr = { fg = colors.syntax.keyword, bold = true },

        Visual = { bg = colors.bg.overlay },

        StatusLine = { fg = colors.fg.primary, bg = colors.bg.surface },
        VertSplit = { fg = colors.bg.overlay },

        Pmenu = { fg = colors.fg.primary, bg = colors.bg.surface },
        PmenuSel = { bg = colors.bg.overlay },

        Search = { bg = colors.syntax.keyword, fg = colors.bg.base },
        IncSearch = { bg = colors.syntax.func, fg = colors.bg.base },
    }
end
