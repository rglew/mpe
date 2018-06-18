FROM anapsix/alpine-java
MAINTAINER Richard

# Nukkit files
COPY nukkit-1.0-SNAPSHOT.jar /home/nukkit-1.0-SNAPSHOT.jar
COPY nukkit.yml /home/nukkit.yml
COPY server.properties /home/server.properties

# EssentialsNK files
COPY EssentialsNK-1.0.8.jar /home/plugins/EssentialsNK-1.0.8.jar

# MobPlugin files
COPY MobPlugin-1.1-DEV.jar /home/plugins/MobPlugin-1.1-DEV.jar

# Worlds
COPY worlds /home/worlds

# Run Nukkit
WORKDIR /home/
CMD java -jar /home/nukkit-1.0-SNAPSHOT.jar