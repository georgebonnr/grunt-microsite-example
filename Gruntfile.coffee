module.exports = (grunt) ->

  Utils = require("common-grunt-site/builders/Utils")(grunt)

  Utils.loadNpmTasks()

  vendorScripts = [
    "assets/bower_components/angular/angular.js"
    "assets/bower_components/underscore/underscore.js"
  ]

  Utils.loadBuilder "coffeescript-app", __dirname
  Utils.loadBuilder "vendor-scripts", __dirname, vendorScripts