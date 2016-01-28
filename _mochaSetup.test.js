// Default Modules available and namespaced assignets on global.
import _ from "lodash";
import sinon from "sinon";
import { expect, should } from "chai";
import { jsdom } from "jsdom"

// jsdom for react tests
global.document  = jsdom("<html><head></head><body><div id ='root'></div></body></html>");
global.window    = global.document.defaultView;
global.react_el  = document.querySelector("#root");
global.navigator = { userAgent: 'node.js' };

// Expose Globals, lodash, jsdom & chai
global._      = _;
global.sinon  = sinon;
global.expect = expect;
global.should = should();

// Before each access globals locally
beforeEach( function() {
  this.server   = sinon.fakeServer.create();
  this.clock    = sinon.useFakeTimers();
});

afterEach( function() {
  document.body.innerHTML = "<div id='root'></div>";
  this.clock.restore();
  this.server.restore();

  // setting up and closing a "window" every run is really heavy
  // it prevents contamination between tests and prevents memory leaks
  // window.close()
});
