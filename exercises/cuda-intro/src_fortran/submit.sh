#!/bin/bash
#
#SBATCH --job-name=cuda-intro
#SBATCH --gres=gpu:1
#SBATCH --time=00:01:00
#SBATCH --partition=gpu
#SBATCH --qos=short

./intro
