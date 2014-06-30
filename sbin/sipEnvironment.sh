#$Author: mader $
#$Date: 2009/01/22 10:29:34 $
#$Id: Script to setup the TIPL toolbox for image processing using the TIPL project path $
#$Name:  $
#$Revision: 1.0 $
# Imaging Library
export CLASSPATH=$CLASSPATH:/afs/psi.ch/project/tipl/jar/TIPL.jar
# Spark Library
export CLASSPATH=$CLASSPATH:/afs/psi.ch/project/tipl/spark/jars/spark-assembly-0.9.0-incubating-SNAPSHOT-hadoop1.0.4.jar
# Spark Commands
alias sparkmaster='/afs/psi.ch/project/tipl/spark/sbin/start-master.sh'
alias sparkshell='/afs/psi.ch/project/tipl/spark/bin/spark-shell'
alias sparkworker='qsub /afs/psi.ch/project/tipl/jobs/SparkWorker.sge'
alias fastspark='qsub -q short.q /afs/psi.ch/project/tipl/jobs/FastSpark.sge'
alias singlespark='qsub -q short.q /afs/psi.ch/project/tipl/jobs/SingleSpark.sge'
alias localworker='/afs/psi.ch/project/tipl/spark/bin/spark-class org.apache.spark.deploy.worker.Worker -d /scratch/'

