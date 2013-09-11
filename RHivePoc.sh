#!/usr/bin/Rscript
library(RJDBC) #dependent on DBI & rJava
library(DBI) 
library(rJava)
hive_dir <- "~/opt/hive-0.11.0/lib/" #jar files
# rJava initialization 
.jinit() 
# adding jar files to class path 
.jaddClassPath(dir(hive_dir,full.names=TRUE) ) 
drv <- JDBC("org.apache.hadoop.hive.jdbc.HiveDriver","~/Downloads/Setup/64-bit/Hadoop/Hive/hive-jdbc-0.8.1.jar",identifier.quote="`")
print('connecting to hive Server . . . . . . . . . . . . . . . . . ')
conn <- dbConnect(drv, "jdbc:hive://localhost:10000", "", "")
print('connected to Hive Server ')
print(' Submitting query. . . . . . . . . ')
visit_counts <- dbGetQuery(conn,paste("select count(clo1) AS NoOfRow from someDataBase.someTable", sep=""))
print('Result')
print('---------------------------------------------------------------------------------')
print(visit_counts)
# plot required graph
# barplot(visit_counts)