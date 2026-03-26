-- lua/tokyocity/groups/plugins/telescope.lua

return function(colors, opts)
    return {
        -- Main popup
        TelescopeNormal = { fg = colors.fg.primary, bg = colors.bg.elevated },
        TelescopeBorder = { fg = colors.fg.muted, bg = colors.bg.elevated },

        -- Prompt area (distinct surface — slightly more prominent)
        TelescopePromptNormal = { fg = colors.fg.primary, bg = colors.bg.overlay },
        TelescopePromptBorder = { fg = colors.fg.muted, bg = colors.bg.overlay },
        TelescopePromptPrefix = { fg = colors.syntax.func, bg = colors.bg.overlay },

        -- Results panel
        TelescopeResultsNormal = { fg = colors.fg.secondary, bg = colors.bg.elevated },
        TelescopeResultsBorder = { fg = colors.fg.muted, bg = colors.bg.elevated },

        -- Preview panel
        TelescopePreviewNormal = { fg = colors.fg.secondary, bg = colors.bg.elevated },
        TelescopePreviewBorder = { fg = colors.bg.highest, bg = colors.bg.elevated },

        -- Selection
        TelescopeSelection = { fg = colors.fg.bright, bg = colors.ui.selection },
        TelescopeSelectionCaret = { fg = colors.syntax.func, bg = colors.ui.selection },

        -- Matching and title
        TelescopeMatching = { fg = colors.syntax.constant, bold = true },
        TelescopeTitle = { fg = colors.fg.bright, bold = true },
    }
end
