-- lua/tokyocity/groups/lsp.lua

return function(colors)
    return {
        -- Diagnostics
        DiagnosticError = { fg = colors.diag.error },
        DiagnosticWarn = { fg = colors.diag.warn },
        DiagnosticInfo = { fg = colors.diag.info },
        DiagnosticHint = { fg = colors.diag.hint },

        DiagnosticUnderlineError = { undercurl = true, sp = colors.diag.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.diag.warn },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.diag.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.diag.hint },

        DiagnosticVirtualTextError = { fg = colors.diag.error, bg = colors.bg.elevated },
        DiagnosticVirtualTextWarn = { fg = colors.diag.warn, bg = colors.bg.elevated },
        DiagnosticVirtualTextInfo = { fg = colors.diag.info, bg = colors.bg.elevated },
        DiagnosticVirtualTextHint = { fg = colors.diag.hint, bg = colors.bg.elevated },
    }
end
