#!/bin/bash
#SBATCH --partition=gpuq       # the requested queue
#SBATCH --nodes=1              # number of nodes to use
#SBATCH --tasks-per-node=1     #
#SBATCH --cpus-per-task=40      #
#SBATCH --mem-per-cpu=4800       # in megabytes, unless unit explicitly stated
#SBATCH --error=%J.err         # redirect stderr to this file
#SBATCH --output=%J.out        # redirect stdout to this file
#SBATCH --mail-user=mdpllard@memphis.edu  # email address used for event notification
#SBATCH --mail-type=end                                   # email on job end
#SBATCH --mail-type=fail                                  # email on job failure
#SBATCH --time=8-00:00:00



echo "Usable Environment Variables:"
echo "============================="
echo "hostname=$(hostname)"
echo \$SLURM_JOB_ID=${SLURM_JOB_ID}
echo \$SLURM_NTASKS=${SLURM_NTASKS}
echo \$SLURM_NTASKS_PER_NODE=${SLURM_NTASKS_PER_NODE}
echo \$SLURM_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
echo \$SLURM_JOB_CPUS_PER_NODE=${SLURM_JOB_CPUS_PER_NODE}
echo \$SLURM_MEM_PER_CPU=${SLURM_MEM_PER_CPU}



#module load repeatmodeler
#source /home/mdpllard/miniconda3/bin/activate repeatmasker

module load repeatmodeler

#gunzip /home/mdpllard/Chapter_3/bear_constraint/GCA_028533245.1_Helarctos_malayanus_HiC_genomic.fna.gz

#BuildDatabase -name malayanus /home/mdpllard/Chapter_3/bear_constraint/GCA_028533245.1_Helarctos_malayanus_HiC_genomic.fna
#
#RepeatModeler -database malayanus -threads 40 -LTRStruct
#
#RepeatMasker -lib malayanus-families.fa -dir . -e rmblast -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCA_028533245.1_Helarctos_malayanus_HiC_genomic.fna
#
#gzip /home/mdpllard/Chapter_3/bear_constraint/GCA_028533245.1_Helarctos_malayanus_HiC_genomic.fna
#gzip /home/mdpllard/Chapter_3/bear_constraint/GCA_028533245.1_Helarctos_malayanus_HiC_genomic.fna.masked
#
#
#
#gunzip /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna.gz

BuildDatabase -name thibetanus /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna

RepeatModeler -database thibetanus -threads 40 -LTRStruct

RepeatMasker -lib thibetanus-families.fa -dir . -e rmblast -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna

gzip /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna
gzip /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna.masked

#/home/mdpllard/RepeatMasker/RepeatMasker -species ursus -dir . -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCA_009660055.1_ASM966005v1_genomic.fna



gunzip /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna.gz

BuildDatabase -name americanus /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna

RepeatModeler -database americanus -threads 40 -LTRStruct

RepeatMasker -lib americanus-families.fa -dir . -e rmblast -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna

gzip /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna
gzip /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna.masked

#/home/mdpllard/RepeatMasker/RepeatMasker -species ursus -dir . -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCF_020975775.1_gsc_jax_bbear_1.0_genomic.fna



gunzip /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna.gz

BuildDatabase -name arctos /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna

RepeatModeler -database arctos -threads 40 -LTRStruct

RepeatMasker -lib arctos-families.fa -dir . -e rmblast -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna

gzip /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna
gzip /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna.masked

#/home/mdpllard/RepeatMasker/RepeatMasker -species ursus -dir . -xsmall -pa 20 -s /home/mdpllard/Chapter_3/bear_constraint/GCF_023065955.2_UrsArc2.0_genomic.fna