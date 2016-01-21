React = require "react"

require "./someComponent.css"

SomeComponent = React.createClass

  displayName: 'SomeComponent'

  render: ->
    <div id='some'>
      <p>hi there</p>
    </div>

module.exports = SomeComponent
