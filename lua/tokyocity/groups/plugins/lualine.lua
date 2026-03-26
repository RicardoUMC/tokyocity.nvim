-- lua/tokyocity/groups/plugins/lualine.lua

local M = {}

-- Holds the built theme; set when the colorscheme loads.
-- Lualine picks it up automatically via theme = "auto" (default) because
-- g:colors_name = "tokyocity" is set before this runs.
-- Can also be set explicitly: options = { theme = "tokyocity" }
M.theme = nil

-- Recommended separators — apply in your lualine setup:
--   local tc = require("tokyocity.groups.plugins.lualine")
--   require("lualine").setup({
--     options = {
--       theme                = "tokyocity",
--       section_separators   = tc.section_separators,   -- or tc.separators.top.section
--       component_separators = tc.component_separators, -- or tc.separators.top.component
--     }
--   })

-- Separator presets
M.separators = {
    -- Triangles pointing upward
    bottom = {
        section = { left = "", right = "" },
        component = { left = " ", right = " " },
    },
    -- Triangles pointing downward (default)
    top = {
        section = { left = "", right = "" },
        component = { left = " ", right = " " },
    },
}

-- Defaults — bottom preset
M.section_separators = M.separators.bottom.section
M.component_separators = M.separators.bottom.component

local function build_theme(colors)
    -- a = mode pill (most prominent)
    -- b = branch / filename (secondary surface)
    -- c = rest of bar (background level)

    -- Normal mode
    local normal = {
        a = { bg = colors.mode.normal, fg = colors.bg.base, gui = "bold" },
        b = { bg = colors.bg.elevated, fg = colors.fg.primary },
        c = { bg = colors.bg.surface, fg = colors.fg.secondary },
    }

    -- Insert mode
    local insert = {
        a = { bg = colors.mode.insert, fg = colors.bg.base, gui = "bold" },
    }

    -- Visual mode
    local visual = {
        a = { bg = colors.mode.visual, fg = colors.bg.base, gui = "bold" },
    }

    -- Replace mode
    local replace = {
        a = { bg = colors.mode.replace, fg = colors.bg.base, gui = "bold" },
    }

    -- Command mode
    local command = {
        a = { bg = colors.mode.command, fg = colors.bg.base, gui = "bold" },
    }

    -- Inactive statusline — clearly dimmed, no accent
    local inactive = {
        a = { bg = colors.bg.elevated, fg = colors.fg.muted },
        b = { bg = colors.bg.surface, fg = colors.fg.muted },
        c = { bg = colors.bg.base, fg = colors.fg.subtle },
    }

    return {
        normal = normal,
        insert = insert,
        visual = visual,
        replace = replace,
        command = command,
        inactive = inactive,
    }
end

-- Called by theme.lua during colorscheme load.
-- Builds and stores the lualine theme; returns {} so merge_groups is a no-op.
-- The theme is exposed via lua/lualine/themes/tokyocity.lua in the runtimepath,
-- so lualine resolves it automatically with theme = "auto" or theme = "tokyocity".
M.load = function(colors, opts)
    M.theme = build_theme(colors)
    return {}
end

return M
