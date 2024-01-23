FROM eclipse-temurin:17.0.9_9-jdk

COPY install.sh /opt
RUN bash /opt/install.sh

COPY run_cpd.sh /opt
COPY run_checkstyle.sh /opt
