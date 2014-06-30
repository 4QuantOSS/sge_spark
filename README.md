# Running Spark in a Sun Grid Engine (or similar)

Ideally Spark is used on a dedicated cluster or using Mesos tools, but many existing clusters are running Sun Grid Engine or similar frameworks and unlikely to change in the near future (legacy codes). Spark can, however, be run very efficiently run inside these environments

## Repository Structure

### jobs
A folder with the SGE-style job scripts to run for the workers (setup for the Merlin Cluster at Paul Scherrer Institute but easily adaptable to other systems

### sbin
A folder for a script to setup the path locally and create a few aliases to make starting easier

### bin
A modified compute-classpath.sh to include the image processing library separately 

### conf
A modified environment file to setup the local storage correctly (clusters usually have a home filesystem which is shared and not idea for the worker directory


## Instructions

1. Start the master node on one of the machines (locally)
```
start-master.sh
```

1. Submit the code to run to the queue management system
```
qsub mysparkjob.sge -master=spark://masternode.me:7077
``` 
~~(replace masta.me accordingly)~~


1. Submit many worker jobs connecting to the master node
```
for i in {1..100}; 
do 
qsub sparkworker.sge spark://masternode.me:7077; 
done
```

###Note

As worker jobs are scheduled by Sun Grid Engine they connect to the master and work on whatever needs to be done. __Workers will not quit until they exceed the maximum running time__ (```s_rt```)