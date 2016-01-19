React = require "react"

someComponent = React.createClass

  displayName: 'someComponent'

  render: ->
    <div id='some'>
      <p>hi</p>
    </div>

module.exports = someComponent
