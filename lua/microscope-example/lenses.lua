local lenses = {}

function lenses.hello_world()
  return {
    fun = function(flow)
      flow.write({ "Hello", "world", "!" })
    end,
  }
end

return lenses
