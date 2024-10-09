#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --exclude="pbil-deb24,pbil-deb27,pbil-deb39"
#SBATCH --cpus-per-task=24
#SBATCH -e /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis_save2/scripts/Revbayes_main.error
#SBATCH -o /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis_save2/scripts/Revbayes_main.out
#SBATCH -J Revbayes_main

mpirun -np 24 --oversubscribe /beegfs/data/bguinet/TOOLS/revbayes/projects/cmake/rb-mpi /beegfs/data/bguinet/Cynipoidea_project/Analyses/Clustering/Rev_datation_analysis_save2/scripts/2_mcmc_dating_moremoves_noMC3_Exp_CompoundMoves_TER2.rev
