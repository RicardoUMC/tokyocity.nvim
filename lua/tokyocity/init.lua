local M = {}

local config = require("tokyocity.config")
local theme = require("tokyocity.theme")

function M.setup(opts)
    config.setup(opts)
    theme.load()
end

function M.load()
    theme.load()
end

return M
