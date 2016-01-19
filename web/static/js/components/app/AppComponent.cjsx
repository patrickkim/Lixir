React = require "react"
someComponent = require "./someComponent"

AppComponent = React.createClass

  displayName: 'AppComponent'

  render: ->
    <div id='application'>
      <someComponent />
      <h1>Woo!</h1>
    </div>

module.exports = AppComponent
