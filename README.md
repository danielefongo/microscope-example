# microscope plugin example

```lua
local microscope = require("microscope")
local microscope_example = require("microscope-example")

microscope.setup({...})
microscope.register(microscope_example.finders)

vim.keymap.set("n", "<leader>e", microscope.finders.example)
```
