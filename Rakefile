require 'rubygems'

task :default => [:resize]

desc 'Generate non-retina version of images'
task :resize do
  system('ruby ./script/bit_image_resizer.rb')
end
