#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time 200:00:00
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task=16
#SBATCH --partition gpu
#SBATCH --gres gpu:1
#SBATCH --mem 32GB

module load gromacs/2025.1

# Energy minimization
gmx grompp -f emin.mdp -o emin.tpr -c initial_config.gro -p topol.top -r initial_config.gro -maxwarn 2
gmx mdrun -nt 16 -deffnm emin -c emin.pdb

# Protein equilibration
gmx grompp -f equil.mdp -o equil.tpr -c emin.pdb -p topol.top -r emin.pdb -maxwarn 2
gmx mdrun -nt 16 -deffnm equil -c equil_50ns.pdb

# Production
gmx grompp -f production.mdp -o production.tpr -c equil_50ns.pdb -p topol.top -maxwarn 2
gmx mdrun -nt 16 -deffnm production -c production_2000ns.pdb
