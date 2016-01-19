React = require("react")

AppComponent = React.createClass
  # Need to add this manually if you want it to show up in React Chrome Dev Tools
  # See https://github.com/jsdf/coffee-react-transform/issues/16
  displayName: "AppComponent"

  render: ->
    <div>
      <h1>Woo!</h1>
    </div>

module.exports = AppComponent
