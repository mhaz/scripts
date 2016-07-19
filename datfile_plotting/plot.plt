#to be run from the master side datfiles

set term x1
#########################
reset

set terminal postscript eps enhanced color
set output 'position.eps'

set xlabel "Time[s]"
set ylabel "Position[m]"
#set xr[0:10]
plot 'test.dat'\
	using ($1/10000):5 t "x_{m}" with line

set output 'position.eps'
replot 'test.dat'\
	using ($1/10000):($2-0.05) t "x_{s}" with line


#########################
#########################
reset



set terminal postscript eps enhanced color
set output 'force.eps'



#unset key
set xlabel "Time[s]"
set ylabel "Force[N]"
#set xr[0:10]
plot 'test.dat'\
	using ($1/10000):4 t "F_m" with line

set output 'force.eps'
replot 'test.dat'\
	using ($1/10000):7 t "F_s" with line


    
#########################
#########################
