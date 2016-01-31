import React from 'react';
import ReactDOM from 'react-dom';
import AppComponent from './appComponent';

require('./_test');


export default function(message) {
  if (message) {
    console.log(message);
  };

  ReactDOM.render(
    <AppComponent />,
    document.querySelector('#root')
  );
}
