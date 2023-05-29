local open = require("microscope-example.open")
local preview = require("microscope-example.preview")
local example_lenses = require("microscope-example.lenses")
local lenses = require("microscope.builtin.lenses")
local display = require("microscope.api.display")

return {
  example = {
    lens = lenses.fzf(example_lenses.hello_world()),
    open = open.print_result,
    parsers = {},
    preview = preview.show_result,
    size = {
      height = 10,
      width = 20,
    },
    layout = function(opts)
      return display
        .vertical({
          display.input(1),
          display.horizontal({
            display.results("60%"),
            display.preview(),
          }),
        })
        :build(opts.finder_size)
    end,
  },
}
