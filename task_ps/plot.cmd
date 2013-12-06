# Gnuplot commands to plot dpi-fmt plot from plot.txt
set key left
set terminal tikz
set output "plot.tex"
plot for [col=2:10] 'plot.txt' using 1:col:xtic(1) with lines title columnheader
