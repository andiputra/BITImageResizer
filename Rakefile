require 'rubygems'

task :default => [:resize]

desc 'Generate non-retina version of images'
task :resize do
  # Check if gem exists
  # If it's not, install it
  # If it is, run the script 
  #`gem install ./hola-0.0.0.gem`
  system('ruby ./script/bit_image_resizer.rb')
end
