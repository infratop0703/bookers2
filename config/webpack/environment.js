const { environment } = require('@rails/webpacker')

module.exports = environment
<<<<<<< HEAD

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)
=======
>>>>>>> da1d420 (ヘッダーリンク記述(link to ~ end に変更)
