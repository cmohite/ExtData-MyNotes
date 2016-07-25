# A graphics device is something where you can make a plot appear. Examples include
#  . A window on your computer (screen device)
#  . A PDF file (file device)
#  . A PNG or JPEG file (file device)
#  . A scalable vector graphics (SVG) file (file device)

# On a Mac the screen device is launched with the quartz() function, on Windows the screen device is launched
# with windows() function, and on Unix/Linux the screen device is launched with x11() function.

?Devices # list of devices supported by your R installation...

#The code for mst of the key graphics devices is implemented in the grDevices package,
#which comes with a standard R installation and is typically loaded by default.

head(faithful)
with(faithful, plot(eruptions, waiting))
title(main ="The old faithful Geyser data")

pdf(file = "myplot.pdf")
with(faithful, plot(eruptions, waiting))
title(main ="The old faithful Geyser data")
dev.off()

# vector and bitmap devies

# vector - pdf, svg, postscript, win.metafile
# bitmap - tiff, bmp, png, jpeg

dev.cur() # currently active gr device

dev.set(i) # i - integer for gr device 


dev.copy() # current device to file
dev.copy2pdf() # current device to pdf

# copying is not an exact operation; so plots may not be identical.

library(datasets)
## Create plot on screen device
with(faithful, plot(eruptions, waiting))
## Add a main title
title(main = "Old Faithful Geyser data")
## Copy my plot to a PNG file
dev.copy(png, file = "geyserplot.png")
## Don't forget to close the PNG device!
dev.off()