FROM amazoncorretto:17

COPY install.sh /opt
RUN bash /opt/install.sh

COPY run_cpd.sh /opt
COPY run_checkstyle.sh /opt
