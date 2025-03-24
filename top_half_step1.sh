#!/bin/bash
#SBATCH --partition=bigmemq       # the requested queue
#SBATCH --nodes=1              # number of nodes to use
#SBATCH --tasks-per-node=1     #
#SBATCH --cpus-per-task=40      #
#SBATCH --mem-per-cpu=19000       # in megabytes, unless unit explicitly stated
#SBATCH --error=%J.err         # redirect stderr to this file
#SBATCH --output=%J.out        # redirect stdout to this file
#SBATCH --time=5-00:00:00



echo "Usable Environment Variables:"
echo "============================="
echo "hostname=$(hostname)"
echo \$SLURM_JOB_ID=${SLURM_JOB_ID}
echo \$SLURM_NTASKS=${SLURM_NTASKS}
echo \$SLURM_NTASKS_PER_NODE=${SLURM_NTASKS_PER_NODE}
echo \$SLURM_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
echo \$SLURM_JOB_CPUS_PER_NODE=${SLURM_JOB_CPUS_PER_NODE}
echo \$SLURM_MEM_PER_CPU=${SLURM_MEM_PER_CPU}



source activate py39
source ~/cactus-bin-v2.5.1/cactus_env/bin/activate

cactus jobstore/2 top_half_step1.txt top_half_step1.hal --realTimeLogging --logInfo --retryCount 10 --maxCores 40 --maxMemory 170Gi --workDir workdir_tmp

cp ~/Chapter_3/241-mammalian-2020v2.hal ~/Chapter_3/bear_constraint/241-mammalian.plus_bears.hal

halAddToBranch ~/Chapter_3/bear_constraint/241-mammalian.plus_bears.hal bottom_half_step1.hal top_half_step1.hal fullTreeAnc220 Anc_UrsusTremarctos Ursus_maritimus Tremarctos_ornatus 0.01134 0.01134
