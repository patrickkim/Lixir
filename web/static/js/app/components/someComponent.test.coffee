React         = require "react"
ReactDOM      = require "react-dom"
someComponent = require "./someComponent"

describe "someComponent", ->

  beforeEach ->
    ReactDOM.render <SomeComponent />, document.body

  afterEach ->
    ReactDOM.unmountComponentAtNode document.body

  it "renders component properties", ->
    el = document.querySelector("#some").innerHTML

    expect(el).to.be.ok
    expect(el).to.have.string "hi"
