

# Default Modules available and namespaced assignets on global.
_      = require "underscore"
# sinon  = require "sinon"
chai   = require "chai"
# jsdom  = require("jsdom").jsdom

# jsdom for react tests
# document = jsdom "<html><body></body></html>"
# window = document.defaultView

# Expose Globals, lodash, jsdom & chai
global._        = _
# global.sinon    = sinon
# global.document = document
# global.window   = window
global.chai     = chai
global.expect   = chai.expect
global.should   = chai.should()

beforeEach ->
  # @document = document
  # @window   = window
  # @server   = sinon.fakeServer.create()
  # @clock    = sinon.useFakeTimers()

afterEach ->
  # @document.body.innerHTML = ""
  # @clock.restore()
  # @server.restore()

  # setting up and closing a "window" every run is really heavy
  # it prevents contamination between tests and prevents memory leaks
  # global.window.close()
