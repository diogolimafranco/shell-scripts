#!/bin/bash

# Create folder to compress images
mkdir webp
mkdir otimized

# Pattern to replace name images
find=".jpg"
replace=".webp"

# Generate webp images with cwebp
# https://developers.google.com/speed/webp/
for i in $(ls *.jpg);
do
  name=${i//$find/$replace}
  cwebp -q 70 $i -o webp/$name
done


# Generate jpg otimized with Guetzli
# https://github.com/google/guetzli
for i in $(ls *.jpg);
do
  guetzli --quality 84 $i otimized/$i
done
