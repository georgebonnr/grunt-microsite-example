module.exports = (grunt) ->
  commonGrunt = require("./node_modules/GuestCenterCommonGrunt")(grunt, __dirname)

  # load
  commonGrunt.loadTask "coffeescript-app"

  commonGrunt.loadTask "connect"
  
  commonGrunt.loadTask "sass"
  
  commonGrunt.loadTask "test-unit"
  
  commonGrunt.loadTask "vendor-scripts",
    files: [
      "assets/bower_components/angular/angular.js"
      "assets/bower_components/underscore/underscore.js"
    ]

  # Load dev task (after builders)
  commonGrunt.loadDevTask()


  # Optionally override config object
  # grunt.config "html2js.app", {
  #   src: ["#{__dirname}/app/src/component/partials/foo.html"]
  #   dest: "#{__dirname}/dist/templates_dev.js"
  #   options:
  #     base: "#{__dirname}/app/src"
  #     module:"templates-client"
  # }


  # Add other site-specific tasks and configs if needed
  # grunt.registerTask "siteTask", [
  # ]
  # 
  # grunt.config "siteConfig", {}