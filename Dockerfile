FROM eclipse-temurin:24-jdk

ENV CHAMBER_VERSION=v2.2.0

RUN apt-get update && apt-get install -y --no-install-recommends curl

RUN curl -o /usr/local/bin/chamber -Ls https://github.com/segmentio/chamber/releases/download/${CHAMBER_VERSION}/chamber-${CHAMBER_VERSION}-linux-amd64

RUN chmod 700 /usr/local/bin/chamber

