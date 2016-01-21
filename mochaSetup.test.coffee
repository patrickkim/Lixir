# Default Modules available and namespaced assignets on global.
_      = require "lodash"
sinon  = require "sinon"
chai   = require "chai"
jsdom  = require("jsdom").jsdom

# jsdom for react tests
global.document = jsdom "<html><head></head><body><div id='react'></div></body></html>"
global.window = global.document.defaultView
global.navigator = { userAgent: 'node.js' }

# Expose Globals, lodash, jsdom & chai
global._        = _
global.sinon    = sinon
global.chai     = chai
global.expect   = chai.expect
global.should   = chai.should()

beforeEach ->
  @document = global.document
  @window   = global.window
  @react_el = @document.querySelector("#react") #drop react renders in here.

  @server   = sinon.fakeServer.create()
  @clock    = sinon.useFakeTimers()

afterEach ->
  @document.body.innerHTML = "<div id='react'></div>"
  @clock.restore()
  @server.restore()

  # setting up and closing a "window" every run is really heavy
  # it prevents contamination between tests and prevents memory leaks
  # global.window.close()
