autoprefixer      = require "autoprefixer"
ExtractTextPlugin = require "extract-text-webpack-plugin"
CopyWebpackPlugin = require "copy-webpack-plugin"
path              = require "path"
webpack           = require "webpack"

# ENV setup
ENV = process.env.MIX_ENV || "dev"

# CSS packages / plug-ins
appStyles = new ExtractTextPlugin("css/app.css")

# Static Assets
staticAssets = new CopyWebpackPlugin(
  [{ from: "./web/static/assets" }]
  ignore: ['*.DS_Store']
)

# Plugins
plugins = [
  appStyles
  staticAssets
]

# PRODUCTION taks
if ENV == "prod"
  plugins.push new webpack.optimize.UglifyJsPlugin(minimize: true)

module.exports =
  entry:
    app: [
      "./web/static/css/app.scss"
      "./web/static/js/app.coffee"
    ]
  output:
    path: "./priv/static"
    filename: "js/app.js"

  devtool: "source-map"

  module:
    loaders: [{
        test: /\.scss$/
        loader: appStyles.extract(["css", "postcss", "sass"])
      }, {
        test: /\.css$/
        loaders: ["style", "css", "postcss"]
      }, {
        test: /\.cjsx$/
        loaders: ["coffee", "cjsx"]
      }, {
        test: /\.coffee$/
        exclude: /\.test\.coffee$/
        loader: "coffee"
      }]
  plugins: plugins

  sassLoader:
    includePaths: [path.resolve("./")]

  postcss: [
    autoprefixer(browsers: ["last 2 versions"])
  ]

  resolveLoader:
    modulesDirectories: [
      "node_modules"
      "#{__dirname}/web/static/js"
    ]

  resolve:
    extensions: ["", ".js", ".cjsx", ".coffee", "css", ".scss"]
