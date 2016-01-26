autoprefixer      = require "autoprefixer"
ExtractTextPlugin = require "extract-text-webpack-plugin"
CopyWebpackPlugin = require "copy-webpack-plugin"
path              = require "path"
webpack           = require "webpack"

# ENV setup
ENV = process.env.MIX_ENV || "dev"

entryPaths = [
  # "./web/static/css/app.scss"
  "./web/static/js/app.coffee"
]

# CSS packages / plug-ins
appStyles = new ExtractTextPlugin("css/bundle.css")

# Static Assets
# staticAssets = new CopyWebpackPlugin(
#   [{ from: "./web/static/assets" }]
#   ignore: ['*.DS_Store']
# )

# React /cjsx loader
reactLoaders = ["coffee", "cjsx"]

# Plugins
plugins = [
  appStyles
  # staticAssets
  new webpack.NoErrorsPlugin()
]

# Webpack-server
publicPath = "http://localhost:4001/"

# DEVELOPMENT only
if ENV == "dev"
  plugins.push new webpack.HotModuleReplacementPlugin()
  entryPaths.push "webpack-dev-server/client?#{publicPath}"
  entryPaths.push "webpack/hot/only-dev-server"
  reactLoaders.unshift "react-hot"

# PRODUCTION only
if ENV == "prod"
  plugins.push new webpack.optimize.UglifyJsPlugin(minimize: true)

module.exports =

  entry:
    entry : entryPaths

  output:
    path: "./priv/static"
    filename: "js/bundle.js"
    publicPath: publicPath

  devtool: "eval-sourcemaps" if ENV == "dev"

  module:
    loaders: [
      {
      #   test: /\.scss$/
      #   # loader: appStyles.extract(["css", "postcss", "sass"])
      #   loaders: ["css", "postcss", "sass"]
      #
      # }, {
      #   test: /\.css$/
      #   loaders: ["style", "css", "postcss"]
      # }, {
        test: /\.cjsx$/
        loaders: reactLoaders
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
    extensions: ["", ".js", ".cjsx", ".coffee"]
    # , ".css", ".scss"
