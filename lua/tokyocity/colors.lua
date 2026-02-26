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
    }

    -- Foreground hierarchy
    colors.fg = {
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
        variable = palette.fg2,
    }

    -- Diagnostics
    colors.diag = {
        error = palette.red,
        warn = palette.amber,
        info = palette.cyan,
        hint = palette.teal,
    }

    -- Git
    colors.git = {
        add = palette.lime,
        change = palette.blue,
        delete = palette.red,
    }

    -- UI
    colors.ui = {
        selection = palette.selection,
        comment = palette.comment,
    }

    return colors
end

return M
