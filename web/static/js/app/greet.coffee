_ = require "underscore"

class Greeter

  temp: [1,2,3,4,5]

  hello: ->
    console.log "helllloooo"
    console.log "has underscore?", _?
    console.log "test module", _(@temp).contains 5

module.exports = new Greeter()
