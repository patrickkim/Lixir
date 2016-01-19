React = require "react"

AppComponent = React.createClass
  displayName: "AppComponent"

  render: ->
    <div id="application">
      <h1>Woo!</h1>
    </div>

module.exports = AppComponent
