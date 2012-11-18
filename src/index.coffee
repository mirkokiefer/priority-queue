
class MinQueue
  constructor: -> @data = []
  push: (value, priority) ->
    @data.push value: value, priority: priority
    @data.sort @condition
  pop: -> 
    {value} = @data.pop()
    value
  condition: (a, b) -> a.priority < b.priority

class MaxQueue extends MinQueue
  condition: (a, b) -> a.priority > b.priority

module.exports =
  MinQueue: MinQueue
  MaxQueue: MaxQueue

