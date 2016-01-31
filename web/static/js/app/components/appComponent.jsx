import React, { Component } from 'react';
import SomeComponent from './someComponent';

export default class AppComponent extends React {
  render() {
    return (
      <div id='application'>
        <SomeComponent increment={1}/>
        <h1>Woo hoo!</h1>
      </div>
    );
  }
}
