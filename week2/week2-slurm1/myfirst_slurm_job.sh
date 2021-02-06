#!/bin/bash
#SBATCH --ntasks=1

# Set the standard output of the script to go to a file called slurm1.txt.
exec 1>slurm1.txt

# Change into your scratch directory (under $HOME). Print out the current directory that you are in.
cd $HOME/scratch
pwd

# Print out the name of the Slurm node on which your job is running.
echo $HOSTNAME

# Print out the environment variable showing how many tasks this job is using.
# Ref: https://hpcc.umd.edu/hpcc/help/slurmenv.html

echo $SLURM_NTASKS
