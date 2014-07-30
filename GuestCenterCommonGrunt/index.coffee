path = require "path"
requireDir = require('require-dir')
_ = require('underscore')

module.exports = (grunt)->

  loadTasks: (grunt, requiredConfig) ->
    builders = requireDir('./builders')
    @loadNpmTasks()
    builder(grunt, requiredConfig) for name, builder of builders
    @registerDevTask()

  loadNpmTasks: ->
    cwd = process.cwd()
    process.chdir(path.join(__dirname))
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks)
    process.chdir(cwd)

  registerDevTask: ->
    grunt.registerTask "dev", [
      "vendor-scripts"
      "coffeescript-app"
      "templates-app"
      "unit-tests"
      "connect:server"
      "watch"
    ]

  extendConfig: (configObj) ->
    for k,v of configObj
      config = grunt.config k
      _.extend(config, v)
      grunt.config k, config