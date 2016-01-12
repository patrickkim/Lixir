Greeter = require "./greet"

describe 'Greet', ->
  it 'should be available', ->
    expect(Greeter).to.be.ok
    expect(Greeter.temp).to.be.ok
