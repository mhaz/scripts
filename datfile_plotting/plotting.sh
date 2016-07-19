#!/bin/bash

# Plots all the .dat files from experiments
# This script uses the usual gnuplot scripts students usually use for plotting their experiments



# Removes the old "test.dat" if it exists
if [ -f test.dat ]
    then
        rm test.dat
fi

# for every dat file...
for i in $( ls *.dat ); do
    
    # Makes the new "test.dat" that is going to be plotted by the gnuplot script
    cp $i test.dat
   
    # By this is the "name of the whole file" minus the extension (the ".dat")
    filename=${i%.*}
    #echo  "$filename"

    # We do the plottings and rename the images accordingly
    echo "Plotting : $filename"
    gnuplot plot.plt
    mv position.eps "position_$filename.eps"
    mv force.eps "force_$filename.eps"

   gnuplot plot_png.plt
   mv position.png "position_$filename.png"
   mv force.png "force_$filename.png"

done

#renoves the last test.dat as it is no longer needed.
rm test.dat
