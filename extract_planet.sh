#!/usr/bin/env bash
#--------------------------------------------------------------------
# Purpose:
#   Extraction of the planets' data from SWIFT's binary output file
# 
# Data          Programmer          Descripton change
# ====          ==========          =================
# 2017-08-07    S. R. DeSouza       Original Code
#--------------------------------------------------------------------


#--------------------------------------------------------------------
# Definitions
#--------------------------------------------------------------------
# Directory of the simulation
dir_simulation=$1

# List of the planets' names
planets=(mercury venus earth mars jupiter saturn uranus neptune)
planets_index=(-2 -3 -4 -5 -6 -7 -8 -9)

# Copy follow_swift.x to directory of the simulation
cp follow_swift.x $dir_simulation
cd $dir_simulation

# Extract planets
for ((i=0;i<${#planets[@]};i++))
do
    echo -e "${planets_index[$i]}\n1" | ./follow_swift.x &> /dev/null
    mv follow.out ${planets[$i]}.txt
done

rm follow_swift.x

cd ../
