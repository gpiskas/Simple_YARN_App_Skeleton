Simple YARN Application Skeleton
==========

This repo contains a barebones implementation of a YARN app, including:

* A YARN Client.
* An Application Master.
* A Container.
* A Utils class needed for configurations.

Behavior:

* This application launches the YARN Client,
* which in turn launches the Application Master,
* which in turn launches 3 Containers,
* which in turn print "Hello World!".

Launch Script (./launch.sh):

The simple script included builds the required YARNAPP.jar that contain the four java classes, puts the jar in HDFS under /apps/YARNAPP.jar, executes the application in hadoop and then outputs its entire log from all components. Feel free to modify it to fit your needs.

Example Log Output:

Client: Initializing <br>
Client: Submitting application_1426756669209_0005 <br>
Client: Finished application_1426756669209_0005 with state FINISHED

AppMaster: Initializing <br>
AppMaster: Registered <br>
AppMaster: Requesting 3 Containers <br>
AppMaster: Unregistered

Container: Initializing <br>
Hello World! <br>
Container: Finalizing

Container: Initializing <br>
Hello World! <br>
Container: Finalizing

Container: Initializing <br>
Hello World! <br>
Container: Finalizing

Simple YARN Application Skeleton <br> (C) 2015 George Piskas, Philémon Favrod
