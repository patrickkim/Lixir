# Import local files
# Local files can be imported directly using relative
# paths "./socket" or full ones "web/static/js/socket".
# require "./socket"

Greet = require "./app/greet";

window.Lixir =
  App:
    run: ->
      console.log("Hello!")
      Greet.hello()

window.onload = ->
  Lixir.App.run()
