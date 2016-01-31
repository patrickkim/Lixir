import React from 'react';
require('./someComponent.css');

export default class SomeComponent extends React.Component {
  render() {
    return (
      <div id='some'>
        <p>Hello</p>
      </div>
    );
  }
}
 // {this.props.name}
