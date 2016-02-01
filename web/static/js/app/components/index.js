import React from 'react';
import ReactDOM from 'react-dom';
import AppComponent from './appComponent';

export default function(message) {
  if (message) {
    console.log(message);
  };

  ReactDOM.render(
    <AppComponent />,
    document.querySelector('#root')
  );
}
