# microscope plugin example

```lua
local lists = require("microscope.lists")
local example = require("microscope-example")

local view = require("microscope").setup({ ... })

vim.keymap.set(
  "n",
  "<leader>e",
  view:finder({
    open = function() end,
    preview = example.show_hello,
    chain = function(text)
      return { example.lists.hello_world(), lists.fzf(text) }
    end,
  })
)
```
