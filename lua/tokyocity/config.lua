local M = {}

M.defaults = {
    -- Whether to use a transparent background for the Normal highlight group.
    -- true = no background color, false = use theme background (default).
    transparent = false,

    -- Style toggles for syntax categories.
    -- Each key accepts true (enable italic) or false (disable italic).
    styles = {
        comments = true,   -- italic comments
        keywords = true,   -- italic keywords (if, for, return, …)
        functions = false, -- italic function names
        types = false,     -- italic type names
        variables = false, -- italic variable names
    },

    -- Optional plugin integrations.
    -- Set a key to false to skip loading that plugin's highlight groups.
    -- All integrations are enabled by default; they are loaded safely with pcall.
    integrations = {
        gitsigns  = true, -- lewis6991/gitsigns.nvim — diff signs in the gutter
        telescope = true, -- nvim-telescope/telescope.nvim — fuzzy finder UI
        cmp       = true, -- hrsh7th/nvim-cmp — completion menu styling
        lualine   = true, -- nvim-lualine/lualine.nvim — statusline theming
    },
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
