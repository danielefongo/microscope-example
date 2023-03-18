local steps = {}

function steps.hello_world()
  return {
    fun = function(on_data)
      on_data({ "Hello", "world", "!" })
    end,
  }
end

return steps
