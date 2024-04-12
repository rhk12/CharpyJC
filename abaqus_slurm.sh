#!/bin/bash
 
#### specify the job and project name
#SBATCH --job-name=abaqus
#SBATCH --account=rhk12
 
#### specify the required resources
#SBATCH --account=open
#SBATCH --partition=open
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem=128GB
#SBATCH --time=01:00:00
 
source ~/.bashrc
module load abaqus
# Change to the directory containing the job file
cd $SLURM_SUBMIT_DIR

abaqus job=sim_output input=Job-1.inp cpus=`nproc` mp_mode=threads interactive
