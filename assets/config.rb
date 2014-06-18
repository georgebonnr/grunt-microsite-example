# Set options
disable_warnings = true
compiletype = environment

# Set this to the root of your project when deployed:
project_path = File.dirname(__FILE__)

# Set up internal project dirs & paths
#
http_path = "/"
http_images_path = "./images"
http_generated_images_path = http_images_path

css_dir = (compiletype == :production) ? "../release-dist/" : "../dist/"
sass_dir = "styles/"
images_dir = "images/"

bower_components_dir = "bower_components/"

# custom vars
otcore_dir = "compass-otcore/"

# additional imports
additional_import_paths = [bower_components_dir + otcore_dir + 'stylesheets']

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (compiletype == :production) ? :expanded : :nested

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = (compiletype == :production) ? false : true

# otcore
begin
  require "otcore"
rescue LoadError
  require File.join(project_path, bower_components_dir + otcore_dir + '/lib/otcore.rb')
end