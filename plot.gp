#!/usr/bin/env gnuplot

# Create directory plots
system ( "[ -d plots ] || mkdir plots" )

# Plot files from planets data
set terminal pdfcairo
set output "plots/mercury.pdf"
plot "data_planets/mercury.txt" u 1:3 w l
