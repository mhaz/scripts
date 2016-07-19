#to be run from the master side datfiles

set term x1
#########################
reset

set terminal pngcairo 
set output 'position.png'

set xlabel "Time[s]"
set ylabel "Position[m]"
#set xr[0:10]
plot 'test.dat'\
	using ($1/10000):2 t "x_m" with line

set output 'position.png'
replot 'test.dat'\
	using ($1/10000):($5-0.05) t "x_s" with line


#########################
#########################
reset



set terminal pngcairo 
set output 'force.png'



#unset key
set xlabel "Time[s]"
set ylabel "Force[N]"
#set xr[0:10]
plot 'test.dat'\
	using ($1/10000):4 t "F_m" with line

set output 'force.png'
replot 'test.dat'\
	using ($1/10000):7 t "F_s" with line


    
#########################
#########################
