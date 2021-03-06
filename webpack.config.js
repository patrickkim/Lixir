var autoprefixer      = require('autoprefixer');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var path              = require('path');
var webpack           = require('webpack');

// DEV setup
// CSS packages / plug-ins
var appStyles = new ExtractTextPlugin('css/app.css');

// Static Assets
var staticAssets = new CopyWebpackPlugin(
  [{ from: './web/static/assets' }],
  { ignore: ['*.DS_Store'] }
);

// Set global variables
var defineVariables = new webpack.DefinePlugin({
  __PROD__: false
});

// Plugins
var plugins = [
  appStyles,
  staticAssets,
  defineVariables,
  new webpack.NoErrorsPlugin(),
  new webpack.HotModuleReplacementPlugin()
];

// webpack-dev-server
var publicPath = 'http://localhost:4001/'

module.exports = {
  devtool: 'eval-source-map',
  color: true,
  entry: {
    'app': [
      `webpack-dev-server/client?${publicPath}`,
      'webpack/hot/only-dev-server',
      './web/static/js/app.js',
      './web/static/css/app.scss'
    ],
  },
  output: {
    path: path.join(__dirname, './priv/static'),
    filename: 'js/app.js',
    publicPath
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
      loaders: ['react-hot', 'babel']
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
