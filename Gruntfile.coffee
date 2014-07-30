module.exports = (grunt) ->
  commonGrunt = require("./GuestCenterCommonGrunt")(grunt)



  # Setup before load
  requiredConfig = 
    "rootDir" : __dirname

    "smartling" :
      "apiKey" : "xxx"
      "projectId" : "xxx"

    "vendorScripts": [
      "assets/bower_components/angular/angular.js"
      "assets/bower_components/underscore/underscore.js"
    ]



  # load
  commonGrunt.loadTasks(grunt, requiredConfig)



  # extend/overwrite properties of configs
  # commonGrunt.extendConfig
  #   "html2js.app" :
  #     src: ["#{__dirname}/app/src/component/partials/foo.html"]



  # Overwrite commonGrunt tasks and configs directly
  # grunt.registerTask "dev", [
  # ]
  # 
  # grunt.config "karma.unit-tests", {}



  # Add other site-specific tasks and configs if needed
  # grunt.registerTask "siteTask", [
  # ]
  # 
  # grunt.config "siteConfig", {}