local open = require("microscope-example.open")
local preview = require("microscope-example.preview")
local example_lenses = require("microscope-example.lenses")
local lenses = require("microscope.builtin.lenses")

return {
  example = {
    lens = lenses.fzf(example_lenses.hello_world()),
    open = open.print_result,
    preview = preview.show_result,
  },
}
