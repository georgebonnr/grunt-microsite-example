module.exports = (grunt) ->

  Utils = require("common-grunt-site/builders/Utils")(grunt)

  Utils.loadNpmTasks()

  grunt.config "MicrositeConfig", {

    vendorScripts: [
      "assets/bower_components/angular/angular.js"
      "assets/bower_components/underscore/underscore.js"
    ]

    vendorSass: [
      "assets/bower_components/ot-core"
    ]

    locales: [
      "de-de"
      "en-us"
      "en-gb"
      "es-mx"
      "fr-ca"
      "ja-jp"
    ]

  }

  Utils.loadTasks(__dirname)