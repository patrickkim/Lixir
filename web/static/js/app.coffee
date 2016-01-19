# Import local files
# Local files can be imported directly using relative
# paths "./socket" or full ones "web/static/js/socket".
# require "./socket"


Greet = require './app/greet'
index = require './components/app/index'

window.Lixir =
  App:
    run: ->
      console.log("Hello!")
      Greet.hello()

    react: ->
      index("ohhhhh shit")

window.onload = ->
  Lixir.App.run()
  Lixir.App.react()
