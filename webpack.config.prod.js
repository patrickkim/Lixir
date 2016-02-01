var autoprefixer      = require('autoprefixer');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var path              = require('path');
var webpack           = require('webpack');

// PRODUCTION build tasks
// CSS packages / plug-ins
var appStyles = new ExtractTextPlugin('css/app.css');

// Static Assets
var staticAssets = new CopyWebpackPlugin(
  [{ from: './web/static/assets' }],
  {ignore: ['*.DS_Store']}
);

// Set global variables
var defineVariables = new webpack.DefinePlugin({
  __PROD__: true
});

var uglifyJS = new webpack.optimize.UglifyJsPlugin({
  minimize: true,
  compressor: {
    warnings: false
  }
});

// Plugins
var plugins = [
  appStyles,
  staticAssets,
  defineVariables,
  uglifyJS
];

module.exports = {
  devtool: 'source-map',
  color: true,
  entry: {
    'app': [
      './web/static/css/app.scss',
      './web/static/js/app.js'
    ],
  },
  output: { path: './priv/static',
    filename: 'js/app.js'
  },
  module: {
    loaders: [{
      test: /\.scss$/,
      loader: appStyles.extract(['css', 'postcss', 'sass'])
    }, {
      test: /\.css$/,
      loaders: ['style', 'css', 'postcss']
    },{
      test: /\.jsx?$/,
      exclude: [/^_/, /\.test\.js$/, /node_modules/],
      loader: 'babel'
    }]
  },
  plugins,
  sassLoader: {
    includePaths: [path.resolve('./')]
  },
  postcss: [
    autoprefixer({browsers: ['last 2 versions']})
  ],
  resolveLoader: {
    modulesDirectories: [
      'node_modules',
      `${__dirname}/web/static/js`
    ]
  },
  resolve: {
    extensions: ['', '.js', '.jsx', 'css', '.scss']
  }
};
