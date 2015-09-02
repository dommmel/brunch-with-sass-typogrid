exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo: 'app.js'
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
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
        #require('csswring')
      ]
    babel:
      ignore: [
        /^(bower_components|vendor)/
      ]
    uglify:
      mangle: true
      compress:
        global_defs: 
          DEBUG: true
