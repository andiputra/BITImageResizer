require 'rubygems'
require 'rmagick'

BIT_IMAGE_SCALE_FACTOR = 0.5
QUIT_COMMAND = 'quit'

class BITImageResizer
  
  def initialize
  end

  def prompt
    print '> '
  end

  def start

    puts "Type 'quit' to quit the script."

    while !@from_dir || @from_dir == ""
      puts "Directory of images to be resized: "
      prompt
      @from_dir = STDIN.gets.chomp
    end

    if @from_dir == QUIT_COMMAND
      Process.exit(1)
    end

    while !@to_dir || @to_dir == ""
      puts "Directory to save the resized images: "
      prompt
      @to_dir = STDIN.gets.chomp
    end

    if @to_dir == QUIT_COMMAND
      Process.exit(1)
    end
    
    resize_images
  end

  def resize_images
    Dir.glob("#{@from_dir}/*@2x*.{png,jpg,jpeg,tif,tiff,gif}") do |f|
      image = Magick::Image.read(f).first
      
      puts "Resizing #{image.filename} with size #{image.columns} X #{image.rows} pixels"
      new_image = image.scale(BIT_IMAGE_SCALE_FACTOR)

      path_components = "#{image.filename}".split('/')
      new_image_name = path_components.last.delete('@2x')
      new_image_path = "#{@to_dir}/#{new_image_name}"

      if File.exists? new_image_path
        File.delete(new_image_path)
      end
        
      puts "Resized image to size #{new_image.columns} X #{new_image.rows} pixels to file #{new_image_path}\n\n"
      new_image.write(new_image_path)
    end
  end

end

resizer = BITImageResizer.new
resizer.start
