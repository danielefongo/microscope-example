local preview = {}

function preview.show_result(data, window)
  window:write({ data.text })
end

return preview
