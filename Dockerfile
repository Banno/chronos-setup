FROM redjack/mesos

RUN curl -sSfL http://downloads.mesosphere.io/chronos/chronos-2.1.0_mesos-0.14.0-rc4.tgz --output /chronos.tgz

RUN cd / && tar xzf /chronos.tgz

WORKDIR /chronos

EXPOSE 8081

ENTRYPOINT ["bin/start-chronos.bash"]
