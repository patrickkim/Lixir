# Import local files
# Local files can be imported directly using relative
# paths "./socket" or full ones "web/static/js/socket".
# require "./socket"

React = require "react"
Greet = require "./app/greet"
AppComponent = require "./components/app/AppComponent"

window.Lixir =
  App:
    run: ->
      console.log("Hello!")
      Greet.hello()

    react: ->
      React.render <AppComponent />, document.body

window.onload = ->
  Lixir.App.run()
