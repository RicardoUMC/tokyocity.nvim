-- lua/tokyocity/groups/lsp.lua

return function(colors)
    return {
        DiagnosticError = { fg = colors.diag.error },
        DiagnosticWarn = { fg = colors.diag.warn },
        DiagnosticInfo = { fg = colors.diag.info },
        DiagnosticHint = { fg = colors.diag.hint },

        DiagnosticUnderlineError = { undercurl = true, sp = colors.diag.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.diag.warn },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.diag.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.diag.hint },
    }
end
