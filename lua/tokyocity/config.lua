local M = {}

M.defaults = {
    transparent = false,
    styles = {
        comments = true,
        keywords = true,
        functions = false,
        types = false,
        variables = false,
    },
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
