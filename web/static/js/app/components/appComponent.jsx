import React from 'react';
import SomeComponent from './someComponent';

export default class AppComponent extends React.Component {
  render() {
    return (
      <div id='application'>
        <SomeComponent name='yoyo'/>
        <h1>Woo hoo!</h1>
      </div>
    );
  }
}
