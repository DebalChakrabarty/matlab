# 7th semester image processing lab assignments 

## Assignments

###   Mean Filter
  
  The mean filter is a simple sliding-window spatial filter that replaces the center value in the window with the average (mean) of     all the pixel values in the window. The window, or kernel, is usually square but can be any shape. An example of mean filtering of a single 3x3 window of values is shown below.

#### Unfiltered Values
|5|3|6|
| ------------- |:-------------:| -----:|
|2|*1*|9|
|8|4|7|

5 + 3 + 6 + 2 + 1 + 9 + 8 + 4 + 7 = 45
45 / 9 = 5


|*|*|*|
| ------------- |:-------------:| -----:|
|*|5|*|
|*|*|*|

### Median Filter

The median filter is also a sliding-window spatial filter, but it replaces the center value in the window with the median of all the pixel values in the window. As for the mean filter, the kernel is usually square but can be any shape. An example of median filtering of a single 3x3 window of values is shown below.

#### Unfiltered Values
|6|2|0|
| ------------- |:-------------:| -----:|
|3|97|4|
|19|3|10|

in order:
0, 2, 3, 3, **4**, 6, 10, 15, 97

|*|*|*|
| ------------- |:-------------:| -----:|
|*|4|*|
|*|*|*|
