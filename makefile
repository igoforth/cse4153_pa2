#
# A simple makefile for compiling three java classes
#

# define a makefile variable for the java compiler
#
JCC = javac

# define a makefile variable for compilation flags
# the -g flag compiles with debugging information
#
JFLAGS = -g -d

# typing 'make' will invoke the first target entry in the makefile 
# (the default one in this case)
#
default: packet.class client.class server.class

# this target entry builds the Average class
# the Average.class file is dependent on the Average.java file
# and the rule associated with this entry gives the command to create it
#
packet.class: ./src/packet.java
	$(JCC) $(JFLAGS) ./ ./src/packet.java

client.class: ./src/client.java
	$(JCC) $(JFLAGS) ./ ./src/client.java

server.class: ./src/server.java
	$(JCC) $(JFLAGS) ./ ./src/server.java

# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them
#
clean: 
	$(RM) *.class arrival.log output.txt clientseqnum.log clientack.log