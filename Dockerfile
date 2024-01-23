FROM eclipse-temurin:17.0.6_10-jre

COPY install.sh /opt
COPY run_cpd.sh /opt
COPY run_checkstyle.sh /opt

RUN cd /opt && dos2unix install.sh run_cpd.sh run_checkstyle.sh

RUN bash /opt/install.sh && rm -rf /var/lib/apt/lists/* && rm /opt/install.sh
