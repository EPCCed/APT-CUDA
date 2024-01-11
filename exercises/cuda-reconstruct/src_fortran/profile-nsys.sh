#!/bin/bash
#
#SBATCH --job-name=cuda-reconstruct
#SBATCH --gres=gpu:1
#SBATCH --time=00:01:00
#SBATCH --partition=gpu
#SBATCH --qos=short

NVHPC_VERSION=22.2
module load nvidia/nvhpc/$NVHPC_VERSION

nsys profile -o reconstruct-${SLURM_JOB_ID} ./reconstruct

# Newer versions of Nsys run this for us!
# # For unknown reasons this isn't on the PATH
# $NVHPC/Linux_x86_64/$NVHPC_VERSION/profilers/Nsight_Systems/host-linux-x64/QdstrmImporter reconstruct-${SLURM_JOB_ID}.qdstrm
