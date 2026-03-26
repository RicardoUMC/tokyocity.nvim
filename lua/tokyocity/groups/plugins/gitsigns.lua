-- lua/tokyocity/groups/plugins/gitsigns.lua

return function(colors, opts)
    return {
        -- Signs (sign column)
        GitSignsAdd = { fg = colors.git.add },
        GitSignsChange = { fg = colors.git.change },
        GitSignsDelete = { fg = colors.git.delete },

        -- Number column variants
        GitSignsAddNr = { fg = colors.git.add },
        GitSignsChangeNr = { fg = colors.git.change },
        GitSignsDeleteNr = { fg = colors.git.delete },

        -- Line highlights (subtle bg, not distracting)
        GitSignsAddLn = { fg = colors.git.add, bg = colors.bg.surface },
        GitSignsChangeLn = { fg = colors.git.change, bg = colors.bg.surface },
        GitSignsDeleteLn = { fg = colors.git.delete, bg = colors.bg.elevated },
    }
end
