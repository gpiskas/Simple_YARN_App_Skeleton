#!/bin/sh

# Sets the hadoop classpath.
HADOOP_CP=`hadoop classpath`

# Cleans old build.
rm -f *.jar
rm -r -f build

# Builds the jar.
mkdir build
javac -cp "$HADOOP_CP" -d build src/com/gpiskas/yarn/*.java
jar cf YARNAPP.jar -C build .
rm -r -f build

# Puts the jar in HDFS under /apps/.
hadoop fs -rm -r -f /apps
hadoop fs -mkdir -p /apps
hadoop fs -copyFromLocal YARNAPP.jar /apps/YARNAPP.jar

# Executes the Client.
hadoop jar YARNAPP.jar com.gpiskas.yarn.Client


# Outputs the whole log of the last app.
last=`ls -1t $HADOOP_HOME/logs/userlogs/ | head -1`
cat $HADOOP_HOME/logs/userlogs/"$last"/*/*
