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
##Part Ae
image2 = zeros(360,640,3)                           #creates a 360x640x3 matrix
red, green, blue = separate_var("el-capitan.png")   #loads the red, green, and blue channels from original image
image2[:,:,1] = green;    #loads the green channel into 1st matrix of image
image2[:,:, 2] = blue;    #loads blue channel into second
image2[:, :, 3] = red;    #loads red channel into third

figure(1); clf();                                               #opens and clears figure
subplot(1,2,1); imshow(img); title("Original");axis("off")     #creates a side by side plot of orginal and new image
subplot(1,2,2); imshow(image2); title("Image2"):axis("off")
