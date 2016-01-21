React        = require 'react'
ReactDOM     = require 'react-dom'
AppComponent = require './components/AppComponent'

module.exports = (message) ->
  console.log message if message?
  ReactDOM.render <AppComponent />, document.getElementsByClassName("jumbotron")[0]
