import React from 'react';
import ReactDOM from 'react-dom';
import SomeComponent from './someComponent';

describe('SomeComponent', function() {

  beforeEach(function() {
    ReactDOM.render(<SomeComponent />, react_el);
  });

  afterEach(function() {
    ReactDOM.unmountComponentAtNode(react_el);
  });

  it('renders component properties', function() {
    let el = react_el.querySelector('#some').innerHTML;

    expect(el).to.be.ok;
    expect(el).to.have.string('Hello');
  });
});
