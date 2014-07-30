requireDir = require('require-dir')

module.exports = (grunt, requiredConfig) ->
  rootDir = requiredConfig.rootDir
  vendorConcat = "#{rootDir}/dist/vendor_dev.js"

  files = requiredConfig.vendorScripts

  vendorScriptFiles = {}
  vendorScriptFiles[vendorConcat] = files

  grunt.config "clean.vendor-scripts", vendorConcat

  grunt.config "concat.vendor-scripts", {
    files: vendorScriptFiles
  }

  grunt.config "watch.vendor-scripts", {
    files: files
    tasks: ["vendor-scripts"]
    options:
      spawn: false
  }

  grunt.registerTask "vendor-scripts", [
    "clean:vendor-scripts"
    "concat:vendor-scripts"
  ]