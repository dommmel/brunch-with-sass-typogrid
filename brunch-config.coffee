exports.config =
  files:
    javascripts:
      joinTo: 
        'js/app.js': /^app/
        'js/jquery.js' : /^bower_components\/jquery\/dist\/jquery\.js/
    stylesheets:
      joinTo: 'css/app.css'
  plugins:
    sass:
      options:
        includePaths: [
          'bower_components/susy/sass'
          'bower_components/modular-scale/stylesheets'
          'bower_components/compass-mixins/lib'
          'bower_components/compass-breakpoint/stylesheets'
        ]
    postcss:
      processors: [
        require('autoprefixer')
      ]
    babel:
      ignore: [
        /^(bower_components|vendor)/
      ]