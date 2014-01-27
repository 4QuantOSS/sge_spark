#$Author: mader $
#$Date: 2009/01/22 10:29:34 $
#$Id: Script to setup the TIPL toolbox for image processing using the TIPL project path $
#$Name:  $
#$Revision: 1.0 $
export CLASSPATH=$CLASSPATH:/afs/psi.ch/project/tipl/jar/TIPL.jar
export CLASSPATH=$CLASSPATH:/afs/psi.ch/project/tipl/spark/jars/spark-assembly-0.9.0-incubating-SNAPSHOT-hadoop1.0.4.jar
# Spark Commands
alias sparkmaster='/afs/psi.ch/project/tipl/spark/sbin/start-master.sh'
alias sparkshell='/afs/psi.ch/project/tipl/spark/bin/spark-shell'
alias sparkworker='qsub /afs/psi.ch/project/tipl/jobs/SparkWorker.sge'
alias fastspark='qsub -q short.q /afs/psi.ch/project/tipl/jobs/FastSpark.sge'
alias singlespark='qsub -q short.q /afs/psi.ch/project/tipl/jobs/SingleSpark.sge'
alias localworker='/afs/psi.ch/project/tipl/spark/bin/spark-class org.apache.spark.deploy.worker.Worker -d /scratch/'
# Pure TIPL Definitions
betapath="/afs/psi.ch/project/tipl/jar/TIPL_beta.jar"
alias xjava4='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx4G'
alias xjava8='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx8G' 
alias xjava16='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx16G'
alias xjava32='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx32G' 
alias bxjava4='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx4G -cp $betapath'
alias bxjava8='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx8G -cp $betapath' 
alias bxjava16='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx16G -cp $betapath'
alias bxjava32='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx32G -cp $betapath' 
alias sjava='/afs/psi.ch/project/tipl/jar/Fiji.app/java/linux/jdk1.6.0_24/jre/bin/java -Xmx2500M'

alias vaim='java tipl.formats.VirtualAim'
alias tipl4='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx4G -jar /afs/psi.ch/project/tipl/jar/TIPL.jar'
alias tipl8='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx8G -jar /afs/psi.ch/project/tipl/jar/TIPL.jar'
alias tipl16='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx16G -jar /afs/psi.ch/project/tipl/jar/TIPL.jar'
alias tipl24='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx24G -jar /afs/psi.ch/project/tipl/jar/TIPL.jar'
alias tipl32='/afs/psi.ch/project/tipl/jvm/bin/java -Xmx32G -jar /afs/psi.ch/project/tipl/jar/TIPL.jar'

alias qpreview='qsub /afs/psi.ch/project/tipl/jobs/makepreview.sge'
alias qpreview2='qsub /afs/psi.ch/project/tipl/jobs/makepreview2.sge'
alias qpreviewa='qsub /afs/psi.ch/project/tipl/jobs/makepreview_all.sge'
alias qpreviewa2='qsub /afs/psi.ch/project/tipl/jobs/makepreview_all2.sge'
alias R='/afs/psi.ch/project/tipl/apps/R/bin/R'
alias Rscript='/afs/psi.ch/project/tipl/apps/R/bin/Rscript'
module load paraview
alias pvpython='/opt/paraview/paraview-3.14.0/bin/pvpython'
