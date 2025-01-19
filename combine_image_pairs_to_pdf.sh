#!/bin/bash

#__author__ = 'John Lawrence Euste'

# define the input folders
folder1=folder1 # !
folder2=folder2 # !

# define the output PDF file
output_pdf=FilenameOfPDF.pdf  # !

# create a temporary folder to store paired images
temp_folder=temp_images
mkdir -p $temp_folder

# iterate through the images in folder1 and folder2
# use wildcards to effectively find relevant images in the folders
images='*.png' # !
for image1 in $folder1/$images; do
    filename=$(basename $image1) # filename without folder path
    echo $filename
    
    # check if corresponding file also in folder2
    image2=$folder2/$filename
    if [ -f $image2 ]; then # combine the images side-by-side
        convert +append $image1 $image2 $temp_folder/$filename
    else # check files
        echo No matching image for $filename in the $folder2.
    fi
done

# combine all paired images into one PDF file
convert $temp_folder/$images $output_pdf

# delete temporary folder
rm -rf $temp_folder

echo $output_pdf has been created.


# =============================================================================
# Two folders `folder1` and `folder2` contain images with matching file names. 
# This creates pairs of images from each folder side-by-side, i.e. image from
#  `folder1` on the left and image from `folder2` on the right. Then a PDF file
#  is generated with a pair of images on each page.
# =============================================================================
