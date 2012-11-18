
assert = require 'assert'
{MinQueue, MaxQueue} = require '../lib/index'

describe 'MinQueue', ->
  describe 'push/pop', ->
    it 'should push some values and pop lower priorities first', ->
      q = new MinQueue
      q.push 'a', 5
      q.push 'b', 3
      q.push 'c', 7
      assert.equal q.pop(), 'b'
      assert.equal q.pop(), 'a'
      assert.equal q.pop(), 'c'
describe 'MaxQueue', ->
  describe 'push/pop', ->
    it 'should push some values and pop lower priorities first', ->
      q = new MaxQueue
      q.push 'a', 5
      q.push 'b', 3
      q.push 'c', 7
      assert.equal q.pop(), 'c'
      assert.equal q.pop(), 'a'
      assert.equal q.pop(), 'b'
