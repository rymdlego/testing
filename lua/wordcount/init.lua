local M = {}

M.word_count = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, true)
    local text = table.concat(lines, " ")
    local count = select(2, text:gsub("%S+", ""))
    print("Word Count: " .. count)
end

M.setup = function()
    vim.api.nvim_create_user_command('WordCount', M.word_count, {})
end

return M
