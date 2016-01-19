_ = require "lodash"

class Greeter

  temp: [1,2,3,4,5]

  hello: ->
    console.log "helllloooo"
    console.log "has _?", _?
    console.log "test module", _(@temp).includes 5

module.exports = new Greeter()
