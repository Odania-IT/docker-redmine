FROM alpine:latest
RUN apk add --no-cache curl

FROM redmine:latest

WORKDIR /usr/src/redmine/plugins

# Redhopper https://www.redmine.org/plugins/redhopper
RUN git clone --branch 1.0.11 --depth 1 https://framagit.org/infopiiaf/redhopper.git

WORKDIR /usr/src/redmine
