compileStub = ->
  return null

require.extensions['.scss'] = compileStub
require.extensions['.css'] = compileStub
