local example = {}

example.lists = require("microscope-example.lists")

function example.show_hello(data, window)
  window:write({ data.text })
end

return example
