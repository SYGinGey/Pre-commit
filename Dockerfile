FROM eclipse-temurin:17.0.6_10-jre

COPY install.sh /opt
RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq && \
    cd /opt && \
    wget -nc -O checkstyle.jar "https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.7/checkstyle-10.12.7-all.jar"

COPY run_cpd.sh /opt
COPY run_checkstyle.sh /opt
