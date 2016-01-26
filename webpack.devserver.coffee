#!/usr/bin/env coffee

webpack          = require "webpack"
WebpackDevServer = require "webpack-dev-server"
config           = require "./webpack.config"

new WebpackDevServer( webpack(config), {
  contentBase: "http://localhost:4001"
  publicPath: config.output.publicPath
  hot: true
}).listen 4001, "0.0.0.0", (err, result) ->
  console.error err if err
  console.log "webpack-dev-server running on port 4001"

# Exit on end of STDIN
process.stdin.resume()
process.stdin.on "end", ->
  process.exit 0
