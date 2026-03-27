-- lua/tokyocity/groups/plugins/telescope.lua

return function(colors, opts)
    return {
        -- Main popup
        TelescopeNormal = { fg = colors.fg.primary, bg = colors.bg.surface },
        TelescopeBorder = { fg = colors.fg.muted, bg = colors.bg.surface },

        -- Prompt area (distinct surface — slightly more prominent)
        TelescopePromptNormal = { fg = colors.fg.primary, bg = colors.bg.surface },
        TelescopePromptBorder = { fg = colors.fg.muted, bg = colors.bg.surface },
        TelescopePromptPrefix = { fg = colors.syntax.func, bg = colors.bg.surface },

        -- Results panel
        TelescopeResultsNormal = { fg = colors.fg.secondary, bg = colors.bg.surface },
        TelescopeResultsBorder = { fg = colors.fg.muted, bg = colors.bg.surface },

        -- Preview panel
        TelescopePreviewNormal = { fg = colors.fg.secondary, bg = colors.bg.surface },
        TelescopePreviewBorder = { fg = colors.bg.highest, bg = colors.bg.surface },

        -- Selection
        TelescopeSelection = { fg = colors.fg.bright, bg = colors.bg.surface },
        TelescopeSelectionCaret = { fg = colors.syntax.func, bg = colors.bg.surface },

        -- Matching and title
        TelescopeMatching = { fg = colors.syntax.constant, bold = true },
        TelescopeTitle = { fg = colors.fg.bright, bold = true },
    }
end
