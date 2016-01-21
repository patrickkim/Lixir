React = require "react"
SomeComponent = require "./someComponent"

AppComponent = React.createClass

  displayName: 'AppComponent'

  render: ->
    <div id='application'>
      <SomeComponent />
      <h1>Woo hoo!</h1>
    </div>

module.exports = AppComponent
