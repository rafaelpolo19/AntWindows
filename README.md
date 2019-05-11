# ANT CONTAINER FOR WINDOWS
 
Apache Ant is a Java library and command-line tool whose mission is to drive processes described in build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of Java applications.

This docker image is based on a windows container with jdk8, also jre8 which is necessary for the proper functioning of ant. The installation of ant is done by means of chocolate and which carries out the process of installation and automatic configuration of the ant

### DEPENDENCY

    JRE8
    JDK
    
### CONTAINER RUNS

    docker for windows
    azure devops - pipelines
   
### RUN COMMANDS

pull container

    docker pull rafaelpolo19/ant

run container 
  
    docker run -d --name testant -v  C:\test:c:/test rafaelpolo19/ant ant
    

copy artectos from the container to the host (OPTIONAL) 

* stop container before executing the command
* namecontainer:artifactscontainer hostroute

      docker cp namecontainer:C:/artifacts C:\testroute 
    
### ANT COMMANDS

    ant
    
runs Ant using the build.xml file in the current directory, on the default target.

    ant -buildfile test.xml

runs Ant using the test.xml file in the current directory, on the default target.

    ant -buildfile test.xml dist

runs Ant using the test.xml file in the current directory, on the target called dist.

    ant -buildfile test.xml -Dbuild=build/classes dist

runs Ant using the test.xml file in the current directory, on the target called dist, setting the build property to the value build/classes.

    ant -lib /home/ant/extras

runs Ant picking up additional task and support jars from the /home/ant/extras location

    ant -lib one.jar;another.jar
    ant -lib one.jar -lib another.jar
    
 *  [Dropwizard](https://ant.apache.org/manual-1.9.x/running.html)  - Ant page where the commands are
 
