
#priority-queue
A priority queue implementation in JavaScript (CoffeeScript).

##Example

``` js
var MinQueue = require("priority-queue").MinQueue;

minQueue = new MinQueue
minQueue.push("a", 5);
minQueue.push("b", 1);
minQueue.pop(); // should return "b"
```

