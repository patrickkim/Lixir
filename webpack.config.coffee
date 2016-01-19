# exportsOfFile = require("coffee!./file.coffee")
webpack = require "webpack"

env = process.env.MIX_ENV || 'dev'
prod = env == 'prod'

# plugins = [new ExtractTextPlugin("app.css")]

#This is necessary to get the sass @import's working
# stylePathResolves = (
#     'includePaths[]=' + path.resolve('./') + '&' +
#     'includePaths[]=' + path.resolve('./node_modules')
#   )

# if (prod)
#   plugins.push(new webpack.optimize.UglifyJsPlugin(minimize: true))

module.exports =
  entry: "./web/static/js/app.coffee"
  output:
    path: "./priv/static/js"
    filename: "app.js"
  resolveLoader:
    modulesDirectories: ['node_modules']
  resolve:
    extensions: ["", ".js", ".cjsx", ".coffee"]
  module:
    loaders: [{
        test: /\.scss$/
        loader: "sass-loader"
      },{
        test: /\.cjsx$/
        loaders: ["coffee", "cjsx"]
      },{
        test: /\.coffee$/
        exclude: /\.test\.coffee$/
        loader: "coffee"
      }]
  # plugins: plugins
