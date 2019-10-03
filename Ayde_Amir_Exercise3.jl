##Version Control and Image manipulation
##Part A
##Aa
using PyPlot                               #load package
img = imread("el-capitan.png")             #read image
imshow(img)                                #display image
size(img)                                  #dimensions of image
##Ab
"""
separate_var -- takes as input a string
representing the filename, and then loads
the image file, displays it, and extracts
the red, blue, and green channels into
separate variables, and returns those variables

Args:
   filename (str): string representing filename; ex: "selfie.png"
Returns:
   red (array{Flot32}): returns the red pixels of the image
   blue (array{Flot32}): returns the blue pixels of the image
   green (array{Flot32}): returns the green pixels of the image
"""
function separate_var(filename)                     #creates function
    image = imread(filename)                        #loads image
    imshow(image)                                   #displays image
    red = image[:,:,1]                              #extracts red channel
    green = image[:,:,2]                            #extracts green channel
    blue = image[:,:, 3]                            #extracts blue channel
    println("Reset with git reset --mixed")         #after reset of bug
    return red, green, blue                         #returns the red, green and blue channel
end
