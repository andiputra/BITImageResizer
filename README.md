A simple Ruby script to generate the non-retina version of images for
iPhone and iPad.

## How To Use
1. First, you'll need to have Ruby(v1.9.3, preferably) and rmagick(v2.+,
   preferably)gem installed, if you haven't already.
2. Move into bit_image_resizer folder. Open Terminal. Type `rake`. ENTER.
3. There will be a prompt that ask for the images to be resized
   directory. Enter it.
4. Then, another prompt for the directory in which to save the resized
   images. Enter it.
5. Done. All images with `@2x` suffix and its variations (`@2x~iphone`,
   `@2x~ipad`) in the first directory you've entered will be resized and
   saved to the second directory you entered.
6. Generated images will be re-written if you re-run the script on the
   same directory with the same images.
