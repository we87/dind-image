FROM jpetazzo/dind
MAINTAINER antmanler@gmail.com

# utils and openconnect
RUN apt-get update && \
	apt-get install -y curl openconnect && \
	apt-get clean &&  rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

# s6
ENV S6_VERSION v1.11.0.1
RUN curl -L https://github.com/just-containers/s6-overlay/releases/download/${S6_VERSION}/s6-overlay-amd64.tar.gz | tar -C / -xzf -

# for artifacts
VOLUME /we87

# add services
COPY s6 /etc/
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]

ENV PORT 2375
CMD /usr/local/bin/wrapdocker
