-- lua/tokyocity/groups/editor.lua

return function(colors, opts)
    local transparent = opts and opts.transparent
    local column_bg = transparent and "NONE" or colors.bg.base

    return {
        -- Core
        Normal = { fg = colors.fg.primary, bg = colors.bg.base },
        NormalNC = { fg = colors.fg.primary, bg = colors.bg.base },
        Terminal = { fg = colors.fg.primary, bg = colors.bg.base },
        NormalFloat = { fg = colors.fg.primary, bg = colors.bg.elevated },
        FloatBorder = { fg = colors.fg.muted, bg = colors.bg.elevated },
        FloatTitle = { fg = colors.fg.primary, bg = colors.bg.elevated, bold = true },

        SignColumn = { fg = colors.fg.subtle, bg = column_bg },
        FoldColumn = { fg = colors.fg.subtle, bg = column_bg },
        Folded = { fg = colors.fg.muted, bg = transparent and colors.bg.base or colors.bg.surface },
        ColorColumn = { bg = colors.bg.surface },

        -- Cursor
        Cursor = { fg = colors.bg.base, bg = colors.fg.primary },
        TermCursor = { fg = colors.bg.base, bg = colors.fg.primary },
        TermCursorNC = { fg = colors.bg.base, bg = colors.fg.muted },
        CursorLine = { bg = colors.bg.surface },
        CursorColumn = { bg = colors.bg.surface },
        CursorLineNr = { fg = colors.syntax.keyword, bold = true },
        LineNr = { fg = colors.fg.subtle },
        CursorLineSign = { bg = colors.bg.surface },
        CursorLineFold = { bg = colors.bg.surface },

        MatchParen = { fg = colors.fg.primary, bg = colors.bg.surface, bold = true },

        -- Visual / Search
        Visual = { bg = colors.ui.selection },
        VisualNOS = { bg = colors.ui.selection },
        Search = { bg = colors.syntax.keyword, fg = colors.bg.base },
        IncSearch = { bg = colors.syntax.func, fg = colors.bg.base },
        CurSearch = { bg = colors.syntax.constant, fg = colors.bg.base },
        SearchCount = { fg = colors.fg.primary, bg = colors.bg.surface },

        -- Statusline
        StatusLine = { fg = colors.fg.primary, bg = colors.bg.surface },
        StatusLineNC = { fg = colors.fg.muted, bg = colors.bg.surface },
        WinBar = { fg = colors.fg.primary, bg = colors.bg.surface },
        WinBarNC = { fg = colors.fg.muted, bg = colors.bg.surface },

        -- Splits / Borders
        VertSplit = { fg = colors.bg.overlay, bg = column_bg },
        WinSeparator = { fg = colors.bg.overlay, bg = column_bg },

        -- Popup menu
        Pmenu = { fg = colors.fg.primary, bg = colors.bg.surface },
        PmenuSel = { fg = colors.fg.primary, bg = colors.bg.overlay },
        PmenuSbar = { bg = colors.bg.overlay },
        PmenuThumb = { bg = colors.fg.muted },
        WildMenu = { fg = colors.fg.primary, bg = colors.bg.overlay },

        -- Tabs
        TabLine = { fg = colors.fg.muted, bg = colors.bg.surface },
        TabLineSel = { fg = colors.fg.primary, bg = colors.bg.base },
        TabLineFill = { bg = colors.bg.surface },

        -- Messages
        ErrorMsg = { fg = colors.diag.error },
        WarningMsg = { fg = colors.diag.warn },
        MoreMsg = { fg = colors.diag.info },
        Question = { fg = colors.syntax.func },
        ModeMsg = { fg = colors.fg.primary },
        MsgArea = { fg = colors.fg.primary },

        -- Whitespace / Non-text
        NonText = { fg = colors.bg.highest },
        EndOfBuffer = { fg = colors.bg.highest },
        Whitespace = { fg = colors.bg.highest },
        SpecialKey = { fg = colors.fg.subtle },
        Conceal = { fg = colors.fg.muted },

        -- Navigation
        Directory = { fg = colors.syntax.func },
        QuickFixLine = { bg = colors.bg.overlay, bold = true },

        -- Diff
        DiffAdd = { fg = colors.git.add, bg = colors.bg.surface },
        DiffChange = { fg = colors.git.change, bg = colors.bg.surface },
        DiffDelete = { fg = colors.git.delete, bg = colors.bg.surface },
        DiffText = { fg = colors.fg.primary, bg = colors.bg.overlay, bold = true },
        diffAdded = { fg = colors.git.add },
        diffChanged = { fg = colors.git.change },
        diffRemoved = { fg = colors.git.delete },

        -- Spelling
        SpellBad = { undercurl = true, sp = colors.diag.error },
        SpellCap = { undercurl = true, sp = colors.diag.warn },
        SpellLocal = { undercurl = true, sp = colors.diag.info },
        SpellRare = { undercurl = true, sp = colors.diag.hint },
    }
end
