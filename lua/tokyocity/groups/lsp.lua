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

        -- Sign column
        DiagnosticSignError = { fg = colors.diag.error },
        DiagnosticSignWarn = { fg = colors.diag.warn },
        DiagnosticSignInfo = { fg = colors.diag.info },
        DiagnosticSignHint = { fg = colors.diag.hint },

        -- LSP references
        LspReferenceText = { bg = colors.ui.selection },
        LspReferenceRead = { bg = colors.ui.selection },
        LspReferenceWrite = { bg = colors.ui.selection, bold = true },

        -- LSP semantic tokens
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.method"] = { link = "@function.method" },
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.namespace"] = { link = "@module" },
        ["@lsp.type.macro"] = { link = "@constant.macro" },
        ["@lsp.type.property"] = { link = "@variable.member" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.operator"] = { link = "@operator" },
    }
end
