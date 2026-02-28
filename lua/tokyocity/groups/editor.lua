-- lua/tokyocity/groups/editor.lua

return function(colors)
    return {
        --------------------------------------------------
        -- Core
        --------------------------------------------------
        Normal = { fg = colors.fg.primary, bg = colors.bg.base },
        NormalFloat = { fg = colors.fg.primary, bg = colors.bg.elevated },
        FloatBorder = { fg = colors.fg.muted, bg = colors.bg.elevated },

        --------------------------------------------------
        -- Cursor
        --------------------------------------------------
        CursorLine = { bg = colors.bg.overlay },
        CursorColumn = { bg = colors.bg.overlay },
        CursorLineNr = { fg = colors.syntax.keyword, bold = true },
        LineNr = { fg = colors.fg.subtle },

        --------------------------------------------------
        -- Visual / Search
        --------------------------------------------------
        Visual = { bg = colors.ui.selection },
        Search = { bg = colors.syntax.keyword, fg = colors.bg.base },
        IncSearch = { bg = colors.syntax.func, fg = colors.bg.base },

        --------------------------------------------------
        -- Statusline
        --------------------------------------------------
        StatusLine = { fg = colors.fg.primary, bg = colors.bg.surface },
        StatusLineNC = { fg = colors.fg.muted, bg = colors.bg.surface },

        --------------------------------------------------
        -- Splits / Borders
        --------------------------------------------------
        VertSplit = { fg = colors.bg.overlay },
        WinSeparator = { fg = colors.bg.overlay },

        --------------------------------------------------
        -- Popup menu
        --------------------------------------------------
        Pmenu = { fg = colors.fg.primary, bg = colors.bg.surface },
        PmenuSel = { fg = colors.fg.primary, bg = colors.bg.overlay },
        PmenuSbar = { bg = colors.bg.overlay },
        PmenuThumb = { bg = colors.fg.muted },

        --------------------------------------------------
        -- Tabs
        --------------------------------------------------
        TabLine = { fg = colors.fg.muted, bg = colors.bg.surface },
        TabLineSel = { fg = colors.fg.primary, bg = colors.bg.base },
        TabLineFill = { bg = colors.bg.surface },

        --------------------------------------------------
        -- Messages
        --------------------------------------------------
        ErrorMsg = { fg = colors.diag.error },
        WarningMsg = { fg = colors.diag.warn },
        MoreMsg = { fg = colors.diag.info },
        Question = { fg = colors.syntax.func },
    }
end
