React = require 'react'
ReactDOM = require 'react-dom'
AppComponent = require './AppComponent'

module.exports = (message) ->
  console.log message if message?

  ReactDOM.render <AppComponent />, document.body
