#!/bin/bash
#SBATCH -t 160:00:00
#SBATCH --exclude="pbil-cloud2"
#SBATCH --cpus-per-task=24
#SBATCH -e /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis/scripts/1a_mcmc_jc.error
#SBATCH -o /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis/scripts/1a_mcmc_jc.out
#SBATCH -J Revbayes_main_1a_mcmc

echo $HOSTNAME
hostname
echo hostname
mpirun -np 24 --oversubscribe /beegfs/data/bguinet/TOOLS/revbayes/projects/cmake/rb-mpi  /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis/scripts/1a_mcmc_jc.rev
