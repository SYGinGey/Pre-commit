FROM eclipse-temurin:17.0.6_10-jre

COPY install.sh /opt
COPY run_checkstyle.sh /opt
COPY run_pmd.sh /opt
COPY ruleset.xml /opt

RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq dos2unix && \
    cd /opt && dos2unix install.sh run_pmd.sh run_checkstyle.sh

RUN bash /opt/install.sh && rm -rf /var/lib/apt/lists/* && rm /opt/install.sh
