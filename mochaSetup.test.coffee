# Default Modules available and namespaced assignets on global.
_      = require "lodash"
sinon  = require "sinon"
chai   = require "chai"
jsdom  = require("jsdom").jsdom

# jsdom for react tests
document = jsdom "<html><head></head><body></body></html>"
window = document.defaultView

# Expose Globals, lodash, jsdom & chai
global._        = _
global.sinon    = sinon
global.chai     = chai
global.expect   = chai.expect
global.should   = chai.should()

beforeEach ->
  @document = document
  @window   = window
  @server   = sinon.fakeServer.create()
  @clock    = sinon.useFakeTimers()

afterEach ->
  @document.body.innerHTML = ""
  @clock.restore()
  @server.restore()

  # setting up and closing a "window" every run is really heavy
  # it prevents contamination between tests and prevents memory leaks
  # global.window.close()
