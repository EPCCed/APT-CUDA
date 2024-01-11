#!/bin/bash
#
#SBATCH --job-name=cuda-reconstruct
#SBATCH --gres=gpu:1
#SBATCH --time=00:01:00
#SBATCH --partition=gpu
#SBATCH --qos=short

NVHPC_VERSION=22.11
module load nvidia/nvhpc/$NVHPC_VERSION

cmd=(
    ncu
    -o reconstruct-ncu-${SLURM_JOB_ID} # save to file
    --kernel-name 'regex:.*inverse[eE]dge[dD]etect' # specify kernel to allow skip and count (regex so it works for C and Fortran)
    --launch-skip 1 # skip first one as cold
    --launch-count 10 # collect only ten runs (as collecting detailed info)
    --set detailed # collect 
    reconstruct # application
)
"${cmd[@]}"
