# datfile_plotting

Plots the datfile from experiments and save then under .eps and .png using an appropriate name

## How to use it

* Make sure you have gnuplot (and the packages for saving the plots under the desired formats) installed.
* You make also sure you have `plotting.sh` `plot.plt` and `plot_png.plt` in the same directory.
* Put also the `.dat` files you want to plot in this directory.
* Run the script
```
./plotting.sh
```
* (optionnal)If you get an error saying you can't, try making the script executable.
```
chmod +x plotting.sh
```
* The script ran correctly, everyone is happy. You will find a bunch of `.eps` and `.png` files corresponding to your experimental results along in the directory.
