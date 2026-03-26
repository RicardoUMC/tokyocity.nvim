-- lua/tokyocity/colors.lua

local M = {}

function M.setup(palette, config)
    local colors = {}

    -- Background hierarchy
    colors.bg = {
        base = config.transparent and "NONE" or palette.bg0,
        surface = palette.bg1,
        elevated = palette.bg2,
        overlay = palette.bg3,
        highest = palette.bg4,
    }

    -- Foreground hierarchy
    colors.fg = {
        bright = palette.fg0,
        primary = palette.fg1,
        secondary = palette.fg2,
        muted = palette.fg3,
        subtle = palette.fg4,
    }

    -- Syntax core (Tier 1)
    colors.syntax = {
        keyword = palette.magenta,
        func = palette.blue,
        type = palette.yellow,
        string = palette.green,
        constant = palette.orange,
        number = palette.peach,
        variable = palette.fg1,
        builtin = palette.cyan,
        namespace = palette.fg3,
        macro = palette.orange,
        member = palette.fg2,
        punct = palette.fg4,
    }

    -- Diagnostics
    colors.diag = {
        error = palette.magenta,
        warn = palette.yellow,
        info = palette.cyan,
        hint = palette.blue,
    }

    -- Git
    colors.git = {
        add = palette.green,
        change = palette.blue,
        delete = palette.magenta,
    }

    -- UI
    colors.ui = {
        selection = palette.selection,
        comment = palette.comment,
    }

    -- Modes
    colors.mode = {
        normal = palette.blue,
        insert = palette.green,
        visual = palette.yellow,
        replace = palette.magenta,
        command = palette.violet,
    }

    return colors
end

return M
