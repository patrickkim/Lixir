React         = require "react"
ReactDOM      = require "react-dom"
SomeComponent = require "./someComponent"

describe "someComponent", ->

  beforeEach ->
    ReactDOM.render <SomeComponent />, @react_el

  afterEach ->
    ReactDOM.unmountComponentAtNode @react_el

  it "renders component properties", ->
    el = @document.querySelector("#some").innerHTML

    expect(el).to.be.ok
    expect(el).to.have.string "hi"
