R-on-Hadoop_Hive-POC
====================

Implementation of R On Hadoop , Using Hive . Integration of RJDBC with Hive
====================
Installation: 
====================
1. Install Hadoop.
2. Install Hive. 
3. Install R 
4. Open R prompt 
  # install rJava, DBI, RJDBC 
  install.packages("rJava",dep=TRUE)
  install.packages("DBI",dep=TRUE)
  install.packages("RJDBC",dep=TRUE)
5. start all hadoop server (hdfs,job tracker)  
  $HADOOP_HOME/bin ./start-all.sh
6. start hive thrift server  
  {$HIVE_HOME}/bin hive --service hiveserver
7.Execute  the Script  
