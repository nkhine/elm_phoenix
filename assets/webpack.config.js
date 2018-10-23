const path = require('path');

module.exports = function(env) {
  const production = process.env.NODE_ENV === 'production';

  return {
    devtool: production ? 'source-maps' : 'eval',

    entry: './js/app.js',

    output: {
      path: path.resolve(__dirname, '../priv/static/js'),
      filename: 'app.js',
      publicPath: '/',
    },

    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
          },
        },
        {
            test: /\.elm$/,
            exclude: [/elm-stuff/, /node_modules/],
            use: {
              loader: 'elm-webpack-loader',
              options: {
                debug: options.mode === "development"
              }
            }
          },
      ],
    },

    resolve: {
      modules: ['node_modules', path.resolve(__dirname, 'js')],
      extensions: ['.js'],
    },
  };
};