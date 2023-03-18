local open = {}

function open.print_result(data, _, _)
  vim.api.nvim_err_writeln(data.text)
end

return open
