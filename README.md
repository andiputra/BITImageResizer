A simple Ruby script to generate the non-retina version of images for
iPhone and iPad.

## How To Use
1. First, you'll need to have Ruby and rmagick gem (v2.+,
   preferably) installed. NOTE: *To install rmagick gem, you'll need to
have imagemagick installed first. So, do `brew install imagemagick` if
you're using Homebrew. Then, `gem install rmagick` to
install rmagick gem.*
2. Move into `bit_image_resizer` folder. Open Terminal. Type `rake`. ENTER.
3. There will be a prompt that ask for the *directory of images to be
   resized*. Enter it.
4. Then, another prompt for the *directory in which to save the resized
   images*. Again, enter it.
5. DONE. All images with `@2x` suffix and its variations (`@2x~iphone`,
   `@2x~ipad`) in the first directory you've entered will be resized and
   saved to the second directory you entered.
6. NOTE: *Generated images will be re-written if you re-run the script on the
   same directory with the same images.*
