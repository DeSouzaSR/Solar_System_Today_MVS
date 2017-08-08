#!/usr/bin/env gnuplot

# Create directory plots
system ( "[ -d plots ] || mkdir plots" )

# Plot files from planets data
set terminal pdfcairo
set xlabel "Time [yr]"
set ylabel "Eccentricity"
set key outside

set output "plots/eccentricity_terrestrial.pdf"
plot "data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/venus.txt" u 1:3 w l title "Venus",\
     "data_planets/earth.txt" u 1:3 w l title "Earth",\
     "data_planets/mars.txt" u 1:3 w l title "Mars"

set output "plots/eccentricity_giants.pdf"
plot "data_planets/jupiter.txt" u 1:3 w l title "Jupiter",\
     "data_planets/saturn.txt" u 1:3 w l title "Saturn",\
     "data_planets/uranus.txt" u 1:3 w l title "Uranus",\
     "data_planets/neptune.txt" u 1:3 w l title "Neptune"

set output "plots/eccentricity_terrestrial_4e6.pdf"
set xrange [0:4e6]
plot "data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/venus.txt" u 1:3 w l title "Venus",\
     "data_planets/earth.txt" u 1:3 w l title "Earth",\
     "data_planets/mars.txt" u 1:3 w l title "Mars"

set output "plots/eccentricity_giants_4e6.pdf"
set xrange [0:4e6]
plot "data_planets/jupiter.txt" u 1:3 w l title "Jupiter",\
     "data_planets/saturn.txt" u 1:3 w l title "Saturn",\
     "data_planets/uranus.txt" u 1:3 w l title "Uranus",\
     "data_planets/neptune.txt" u 1:3 w l title "Neptune"

set output "plots/eccentricity_terrestrial_1e6.pdf"
set xrange [0:1e6]
plot "data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/venus.txt" u 1:3 w l title "Venus",\
     "data_planets/earth.txt" u 1:3 w l title "Earth",\
     "data_planets/mars.txt" u 1:3 w l title "Mars"

set output "plots/eccentricity_giants_1e6.pdf"
set xrange [0:1e6]
plot "data_planets/jupiter.txt" u 1:3 w l title "Jupiter",\
     "data_planets/saturn.txt" u 1:3 w l title "Saturn",\
     "data_planets/uranus.txt" u 1:3 w l title "Uranus",\
     "data_planets/neptune.txt" u 1:3 w l title "Neptune"

