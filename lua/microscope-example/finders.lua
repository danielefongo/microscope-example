local open = require("microscope-example.open")
local preview = require("microscope-example.preview")
local example_steps = require("microscope-example.steps")
local steps = require("microscope.steps")

return {
  example = {
    open = open.print_result,
    preview = preview.show_result,
    chain = function(text)
      return { example_steps.hello_world(), steps.fzf(text) }
    end,
  },
}
